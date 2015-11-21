open Types

type attack_status = {
      atk_eff : pEffect;
      self_status_change : bool * pStatus;
      opp_status_change : bool * pStatus;
      missed : bool;
}

type move_status = Attack_Status of attack_status | Switch_Status | Faint_Status

type battle_status = {
      p1_went_first : bool;
      p1_move_status : move_status;
      p2_move_status : move_status;
}

type debuff_state = {
  p1_debuff : pStatus;
  p2_debuff : pStatus;
}
(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
val do_single_move : player_state -> player_state -> fAction -> bool ->
                     game_state -> game_state * move_status

(*
* Applys the single attack to the game state
*)
val apply_attack : player_state -> player_state -> move -> bool -> game_state ->
                   game_state * move_status

(*
* Switches the active pocamon of the player making the move
*)
val switch_pocamon : pocamon -> player_state -> game_state ->
                     game_state * move_status



val apply_fight_sequence : game_state -> fAction -> fAction ->
                           game_state * battle_status


val apply_status_debuffs : game_state -> game_state * debuff_state
