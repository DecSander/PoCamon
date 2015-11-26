open Types
open Fight

type ai_player = P1 | P2

(*
* Takes in an ai_player telling the AI if it is player 1 or player 2 and
* the current game state and returns the next action that the AI wants to
* take given the current state of the game. Uses the minimax algorithm.
*)
val get_ai_action : ai_player -> game_state -> battle_status -> fAction

val get_switch_poca: player_state -> player_state -> bool -> game_state -> pocamon