open Types
open Fight

type ai_player = P1 | P2

let status_score (s: pStatus) :float =
  match s with
  | SNormal -> 0.
  | SPoison -> 0.3
  | SBurn -> 0.3
  | SSleep n -> (float_of_int n) *. 0.2
  | SParalyze -> 0.25
  | SFreeze n -> (float_of_int n) *. 0.2

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

let get_switch_poca foe_poca active_poca pocamon_list : pocamon =
  (* should be elaborated *)

  (* multiplying all the type effectivenesses. So (fire, rock) vs.
   * (water, dragon) then it computes
   * fire vs water * fire vs dragon * rock vs water * rock vs dragon
   *)
  let get_type_eff poca =
      if (fst foe_poca.poca_type) = (snd foe_poca.poca_type) then
        if (fst poca.poca_type) = (snd poca.poca_type)
        then
          calc_type_effectiveness (fst poca.poca_type) (fst def_poca.poca_type)
        else calc_type_effectiveness (fst poca.poca_type) (fst def_poca.poca_type) *.
          calc_type_effectiveness (snd poca.poca_type) (fst def_poca.poca_type)

      else if (fst poca.poca_type) = (snd poca.poca_type)
        then calc_type_effectiveness (fst poca.poca_type) (fst def_poca.poca_type) *.
          calc_type_effectiveness (fst poca.poca_type) (snd def_poca.poca_type)
        else calc_type_effectiveness (fst poca.poca_type) (fst def_poca.poca_type) *.
          calc_type_effectiveness (fst poca.poca_type) (snd def_poca.poca_type) *.
          calc_type_effectiveness (snd poca.poca_type) (fst def_poca.poca_type) *.
          calc_type_effectiveness (snd poca.poca_type) (snd def_poca.poca_type)
  in

  let rec get_best_poca e_list p_list acc best =
    match e_list, p_list with
    | [], [] -> best
    | e_hd::e_tl, p_hd::p_tl ->
      let best_poca = if e_head > acc then p_hd else best in
      let acc' = if e_head > acc then e_head else acc in
      get_best_poca e_tl p_tl acc' best_poca in

  let eff_list = List.map get_type_eff pocamon_list in
  let best_poca = get_best_poca eff_list pocamon_list 0. active_pocamon in
  best_poca

let assemble_actions ai is_ai_turn action (p1_act, p2_act) =
      match ai, is_ai_turn with
      | P1, true ->  action, p2_act
      | P2, true ->  p1_act, action
      | P1, false -> p1_act, action
      | P2, false -> action, p2_act in

let rec mini_max ai g_state b_status is_ai_turn (p1_act,p2_act) recs_left : fAction * float =
  (* if recs_left = 0, return the score *)

  let g_state', b_status' =
  match (p1_act, p2_act) with
  | (None, None) | (_, None) | (None, _) ->
    if recs_left > 0 then g_state, b_status else failwith "minimax ran into an error"
  | (_, _) -> apply_fight_sequence g_state p1_act p2_act in

  if recs_left <= 0 then
    let final_game_score = game_score g_state' in
  let


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
      let switch_poca = get_switch_poca foe_player.active_pocamon
        active_player.active_pocamon active_player.pocamon_list in
      if switch_poca = active_player.active_pocamon then (None, 0)
      else
        let actions =
          assemble_actions ai is_ai_turn (FSwitch switch_poca) (p1_act, p2_act)
        let calcd_switch_score =
          mini_max ai g_state' b_status' (not is_ai_turn) actions (recs_left-1)
      ((Some FSwitch switch_poca), calcd_switch_score)
    else
    (* -7 is worse than any actual score that can be calculated*)
    (None, 0) in

  let f m =
    let actions =
      assemble_actions ai is_ai_turn (FMove m) (p1_act, p2_act)
    let calcd_switch_score =
      mini_max ai g_state' b_status' (not is_ai_turn) actions (recs_left-1) in

  let move_scores_list = List.map f active_player.active_pocamon.moves in

  failwith "TODO"

  (* if the switch pokemon is your active, don't consider switching *)
  (* run mini max for every action *)

  (* get scores back and return best action *)


let get_ai_action (ai: ai_player) (gs: game_state) (bs : battle_status) :action =
  failwith "TODO"