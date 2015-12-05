open Types
open Fight

type ai_player = P1 | P2

(*
* Takes in an ai_player telling the AI if it is player 1 or player 2 and
* the current game state and returns the next action that the AI wants to
* take given the current state of the game. Uses the minimax algorithm.
*)
val get_ai_action : game_state -> battle_status -> fAction


(*
 * For a given game state, this method returns what the AI believes to be the
 * best pocamon to beat the opponent (user)
 *)
val get_switch_poca_mm: game_state -> battle_status -> pocamon

(* Helper functions exposed for unit testing, uncomment to run tests *)
val get_player_score: player_state -> float
val game_score: game_state -> float
val expectation: move -> move
val mini_max: game_state -> battle_status -> bool ->
  (fAction option * fAction option) -> int -> float