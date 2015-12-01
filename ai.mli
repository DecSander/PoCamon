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

(* Helper functions exposed for unit testing, uncomment to run tests *)
val get_player_score: player_state -> float
val game_score: game_state -> float
val expectation: move -> move
val mini_max: game_state -> battle_status -> bool -> (fAction option * fAction option) -> int -> float