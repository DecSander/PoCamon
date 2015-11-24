open Types
open Fight

type ai_player = P1 | P2

let status_score (s: pStatus) :float =
  match s with
  | SNormal -> 0.
  | SPoison -> 1.
  | SBurn -> 1.
  | SSleep n -> (float_of_int n) *. 0.5
  | SParalyze -> 0.9
  | SFreeze n -> (float_of_int n) *. 0.5

let rec health_score (p_list: pocamon list) (score: float) :float =
  match p_list with
  | [] -> score
  | h::t -> health_score t
    (score +. (((float_of_int h.health) /.
                (float_of_int h.stats.max_hp))) ** 2.0)

let player_score (ps: player_state) :float =
  let status = status_score ps.active_pocamon.status in
  let health = health_score ps.pocamon_list 0. in
  health -. status

let game_score (gs: game_state) :float =
  (player_score gs.player_one) -. (player_score gs.player_two)

let expectation move = {move with accuracy=100;
  damage=move.damage*move.accuracy/100}


let get_switch_poca foe_player active_player is_p1 g_state : pocamon =
  (* should be elaborated *)

  let get_eff_score poca =
    let active_player' = {active_player with active_pocamon=poca} in

    let get_health_diff atk_state def_state p1_ia move =
      let e_move = expectation move in
      let g_state', _ = apply_attack atk_state def_state e_move p1_ia g_state in
      let def_poca_health =
      match p1_ia with
      | true -> g_state'.player_two.active_pocamon.health
      | false -> g_state'.player_one.active_pocamon.health in
      def_state.active_pocamon.health - def_poca_health in

    let active_move_vals =
      List.map (get_health_diff active_player' foe_player is_p1) poca.moves in

    let foe_move_vals = List.map
      (get_health_diff foe_player active_player' (not is_p1))
      foe_player.active_pocamon.moves in

    let max_active = List.fold_left max 0 active_move_vals in
    let max_foe = List.fold_left max 0 foe_move_vals in

    float_of_int(max_active)/.float_of_int(max_foe)
  in


  let rec get_best_poca e_list p_list acc best =
    match e_list, p_list with
    | [], [] -> best
    | e_hd::e_tl, p_hd::p_tl ->
      let best_poca = if e_hd > acc then p_hd else best in
      let acc' = if e_hd > acc then e_hd else acc in
      get_best_poca e_tl p_tl acc' best_poca
    | _ -> failwith "this should never happen" in

  let eff_list = List.map get_eff_score active_player.pocamon_list in
  let best_poca = get_best_poca eff_list active_player.pocamon_list 0. active_player.active_pocamon in
  best_poca

let assemble_actions ai is_ai_turn action (p1_act, p2_act) =
  match ai, is_ai_turn with
  | P1, true ->  Some action, p2_act
  | P2, true ->  p1_act, Some action
  | P1, false -> p1_act, Some action
  | P2, false -> Some action, p2_act

let rec mini_max ai g_state b_status is_ai_turn (p1_act, p2_act) recs_left =

  let g_state', b_status', p1_act', p2_act' =
  match (p1_act, p2_act) with
  | (None, None) | (_, None) | (None, _) ->
    if recs_left > 0 then g_state, b_status, p1_act, p2_act
    else failwith "minimax ran into an error"
  | (Some a1, Some a2) -> let g, b = (apply_fight_sequence g_state a1 a2) in
    g, b, None, None in

  if recs_left <= 0 then
    let final_game_score = game_score g_state' in
    final_game_score
  else

    (* check who's turn it is *)
    let active_player =
    match ai, is_ai_turn with
    | P1, true -> g_state'.player_one
    | P2, true -> g_state'.player_two
    | P1, false -> g_state'.player_two
    | P2, false -> g_state'.player_one in

    let foe_player =
    match ai, is_ai_turn with
    | P1, true -> g_state'.player_two
    | P2, true -> g_state'.player_one
    | P1, false -> g_state'.player_one
    | P2, false -> g_state'.player_two in

    let is_p1 =
    match ai, is_ai_turn with
    | P1, true -> true
    | P2, true -> false
    | P1, false -> false
    | P2, false -> true in

    (* check if other person has switched *)
    let did_foe_switch =
    match ai, is_ai_turn with
    | P1, true ->  b_status.p2_move_status = Switch_Status
    | P2, true ->  b_status.p1_move_status = Switch_Status
    | P1, false -> b_status.p1_move_status = Switch_Status
    | P2, false -> b_status.p2_move_status = Switch_Status in

    (* if switch then add the switch option and check for best pokemon *)
    let switch_action_option, switch_score =
      if did_foe_switch then
        let switch_poca = get_switch_poca foe_player
          active_player is_p1 g_state' in
        if switch_poca = active_player.active_pocamon then (None, 0.)
        else
          let actions =
            assemble_actions ai is_ai_turn (FSwitch switch_poca) (p1_act', p2_act') in
          let calcd_switch_score =
            mini_max ai g_state' b_status' (not is_ai_turn) actions (recs_left-1) in
        ((Some (FSwitch switch_poca)), calcd_switch_score)
      else
      (None, 0.) in


    let apply_m_m m =
      let actions =
        assemble_actions ai is_ai_turn (FMove m) (p1_act', p2_act') in
      mini_max ai g_state' b_status' (not is_ai_turn) actions (recs_left-1) in

    let move_scores_list =
      List.map apply_m_m active_player.active_pocamon.moves in

    let get_best best score =
    match is_p1 with
    | true -> max best score
    | false -> min best score in

    let base = if is_p1 then -8. else 8. in
    let best_move_score = List.fold_left get_best base move_scores_list in

    match switch_action_option with
    | Some _ ->
      print_endline (string_of_float(best_move_score)^string_of_float(switch_score));
      get_best best_move_score switch_score
    | None -> best_move_score

let get_ai_action (ai: ai_player) (gs: game_state) (bs : battle_status) : fAction =

  let active_player =
    match ai with
    | P1 -> gs.player_one
    | P2 -> gs.player_two in

    let foe_player =
    match ai with
    | P1 -> gs.player_two
    | P2 -> gs.player_one in

  let moves = active_player.active_pocamon.moves in

  let switch_poca = get_switch_poca foe_player
          active_player false gs in

  let switch_score = mini_max ai gs bs false (None, Some (FSwitch switch_poca)) 7 in

  let m1_score =
    mini_max ai gs bs false (None, Some (FMove (List.nth moves 0))) 7 in
  let m2_score =
    mini_max ai gs bs false (None, Some (FMove (List.nth moves 1))) 7 in
  let m3_score =
    mini_max ai gs bs false (None, Some (FMove (List.nth moves 2))) 7 in
  let m4_score =
    mini_max ai gs bs false (None, Some (FMove (List.nth moves 3))) 7 in

  let m_list = m1_score::m2_score::m3_score::[m4_score] in

  let i = ref (-1) in

  let find_best acc x = if x > acc then let () = i := !i + 1 in x else acc in

  let best_score = List.fold_left find_best (-8.0) m_list in

  if best_score > switch_score
    then FMove (List.nth moves !i) else FSwitch switch_poca
