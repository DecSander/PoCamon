open Types

(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
val do_single_move : player_state -> action -> game_state -> game_state

(*
* Applys the single attack to the game state
*)
val apply_attack : player_state -> move -> game_state -> game_state

(*
* Switches the active pocamon of the player making the move
*)
val switch_pokemon : pocamon -> player_state -> game_state


val apply_fight_sequence : game_state -> action -> action -> game_state