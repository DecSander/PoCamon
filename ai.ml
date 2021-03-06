open Types
open Fight
type ai_player = P1 | P2
let status_score (s: pStatus) :float =
  match s with
  | SNormal -> 0.
  | SPoison -> 0.2
  | SBurn -> 0.2
  | SSleep n -> (float_of_int n) *. 0.2
  | SParalyze -> 0.3
  | SFreeze n -> (float_of_int n) *. 0.2
let poca_score acc poca =
  let health_score = (((float_of_int poca.health) /.
    (float_of_int poca.stats.max_hp)) ** 2.0) in
  let status_score = status_score poca.status in
  acc +. (max (health_score -. status_score) 0.)
let get_player_score p_state =
  let active_poca_score = poca_score 0. p_state.active_pocamon in
  let party_score = List.fold_left poca_score active_poca_score
    p_state.pocamon_list in
  party_score
let game_score (gs: game_state) :float =
  let ps1 = (get_player_score gs.player_one) in
  let ps2 = (get_player_score gs.player_two) in
  ((ps2) -. (ps1))

let rec find_best (best: (float * 'a) option) (ml: (float * 'a) list) :
  (float * 'a) option =
  match ml with
  | [] -> None
  | h::t ->
  Some (List.hd (List.sort (fun v1 v2 -> int_of_float
    (10000. *. ((fst v2) -. (fst v1)))) ml))

let expectation move = {move with accuracy=100;
  damage=move.damage*move.accuracy/100}

let get_switch_poca foe_player active_player is_p1 g_state : pocamon =
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

  let rec get_best_poca e_list (p_list:pocamon list) acc best =
    match e_list, p_list with
    | [], [] -> best
    | e_hd::e_tl, p_hd::p_tl ->
      let best_poca = if (e_hd > acc && (p_hd.health > 0)) || (best.health <= 0)
        then p_hd else best in
      let acc' =
      if e_hd > acc then e_hd else acc in
      get_best_poca e_tl p_tl acc' best_poca
    | _ -> failwith "this should never happen" in
  let eff_list = List.map get_eff_score active_player.pocamon_list in
  let best_poca =
    get_best_poca eff_list active_player.pocamon_list 0.
                  active_player.active_pocamon in
  best_poca

let assemble_actions is_ai_turn action (p1_act, p2_act) =
  match is_ai_turn with
  | true ->  p1_act, Some action
  | false -> Some action, p2_act

let rec mini_max g_state b_status is_ai_turn (p1_act, p2_act) recs_left =
  let g_state', b_status', p1_act', p2_act' =
  match (p1_act, p2_act) with
  | (None, None) | (_, None) | (None, _) ->
    if recs_left > 0 then g_state, b_status, p1_act, p2_act
    else failwith "minimax ran into an error"
  | (Some a1, Some a2) ->
  let g, b = (apply_fight_sequence g_state a1 a2) in
    g, b, None, None in
  if recs_left <= 0 then
    let final_game_score = game_score g_state' in
    if final_game_score = 0.
    then final_game_score else
    final_game_score
  else
    (* check who's turn it is *)
    let active_player =
    match is_ai_turn with
    | true -> g_state'.player_two
    | false -> g_state'.player_one in
    let foe_player =
    match is_ai_turn with
    | true -> g_state'.player_one
    | false -> g_state'.player_two in
    if active_player.active_pocamon.health <= 0 then
      let switch_poca = get_switch_poca foe_player
          active_player (not is_ai_turn) g_state' in
      let actions =
        assemble_actions is_ai_turn (FSwitch switch_poca)
                            (p1_act', p2_act') in
      let calcd_switch_score =
        mini_max g_state' b_status' (not is_ai_turn) actions (recs_left-1) in
      calcd_switch_score
    else
      begin
      (* check if other person has switched *)
      let did_foe_switch =
      match is_ai_turn with
      | true ->  b_status.p1_move_status = Switch_Status
      | false ->  b_status.p2_move_status = Switch_Status in
      (* if switch then add the switch option and check for best pokemon *)
      let switch_action_option, switch_score =
        if did_foe_switch then
          let switch_poca = get_switch_poca foe_player
            active_player (not is_ai_turn) g_state' in
          if switch_poca = active_player.active_pocamon then (None, 0.)
          else
            let actions =
              assemble_actions is_ai_turn (FSwitch switch_poca)
                              (p1_act', p2_act') in
            let calcd_switch_score =
              mini_max
                g_state' b_status' (not is_ai_turn) actions (recs_left-1) in
          ((Some (FSwitch switch_poca)), calcd_switch_score)
        else
        (None, 0.) in
      let apply_m_m m =
        let actions =
          assemble_actions is_ai_turn (FMove m) (p1_act', p2_act') in
        mini_max g_state' b_status' (not is_ai_turn) actions (recs_left-1) in
      let move_scores_list =
        List.map apply_m_m active_player.active_pocamon.moves in
      let get_best best score =
      match is_ai_turn with
      | true -> max best score
      | false -> min best score in
      let base = if is_ai_turn then -8. else 8. in
      let best_move_score = List.fold_left get_best base move_scores_list in
      match switch_action_option with
      | Some _ ->
        get_best best_move_score switch_score
      | None -> best_move_score
    end

let get_ai_action (gs: game_state) (bs : battle_status) =
  let active_player = gs.player_two in
    let foe_player = gs.player_one in
  let moves = active_player.active_pocamon.moves in
  let switch_poca = get_switch_poca foe_player active_player false gs in
  let depth = 7 in
  let switch_score = mini_max gs bs false
    (None, Some (FSwitch switch_poca)) depth in
  let m_list = List.map (fun x ->
    (mini_max gs bs false (None, Some (FMove x)) depth)) moves in
  let s_p_list = List.combine m_list moves in

  let best_score, best_move = match find_best None s_p_list with
     | None -> (-20., List.hd active_player.active_pocamon.moves)
     | Some x -> x in

  if best_score >= switch_score || switch_poca = active_player.active_pocamon
    then FMove best_move else FSwitch switch_poca

let get_switch_poca_mm (gs: game_state) (bs : battle_status) :pocamon  =

  let active_player = gs.player_two in
  let foe_player = gs.player_one in

  let poca = get_switch_poca foe_player active_player false gs in

  let pocamon_list' = List.filter (fun x -> x <> poca)
                        active_player.pocamon_list in
  let pocamon_list'' = (active_player.active_pocamon)::(pocamon_list') in

  let active_player' = {active_player with active_pocamon=poca;
                                           pocamon_list=pocamon_list''} in

  let gs' = {gs with player_two = active_player'} in
  let action = get_ai_action gs' bs in

  match action with
  | FSwitch p -> p
  | FMove _ -> poca
  | _ -> failwith "invalid AI action"

