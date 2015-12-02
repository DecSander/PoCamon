  open Types
  open Io
  open Ai
  open Fight
  open PocaDex

(*
* Prompts the user for an action to be taken. Player can also request
* information is printed during this time
*)
val get_player_action : game_state -> player_state -> screen_state -> fAction

(*
* The recursive driver for the game - takes in the initial game state at first,
* gets the actions from each player, calls fight, and passes the new game state
* returned by fight as a recursive call
*
* Tail recursive
*)
val run_game_turn : game_state -> battle_status -> game_state

(*
* Generates the initial state of the game using information from various text
* files. Randomizes the pocamon each player has and the starting pocamon
* Also requests player names and game mode from the user
*)
val gen_initial_state : unit -> game_state

(*
* Calls gen_initial_state then passes it into run_game_turn to start the game
*)
val start : unit -> unit

val process_screen_action : command option-> screen_state -> game_state -> screen_state

(* Helper functions for unit tests. Uncomment to run tests *)
val gen_next_state : game_state -> game_state -> game_state
val choose_new_pocamon : game_state -> player_state -> screen_state -> game_state
val on_faint : game_state -> game_state