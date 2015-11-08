(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
val fight : player_state -> action -> game_state -> game_state

(*
* Calculates the damage from a particular move
*)
val calculate_damage : move -> game_state -> int

(*
* Switches the active pocamon of the player making the move
*)
val switch_pokemon : pocamon -> player_state -> game_state
