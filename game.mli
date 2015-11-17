open Types
open Io
open Ai
open Fight
open PocaList

(*
* Prompts the user for an action to be taken. Player can also request
* information is printed during this time
*)
val get_player_action : player_state -> public_info -> action

(*
* Takes in the state of the game and the actions of both players, processes
* them and returns the new state of the game after the actions have taken place
*)
val fight : game_state -> action -> action -> game_state

(*
* After both players have gone, this function applies status debuffs such as burn
*)
val apply_status_debuffs : game_state -> game_state

(*
* The recursive driver for the game - takes in the initial game state at first,
* gets the actions from each player, calls fight, and passes the new game state
* returned by fight as a recursive call
*
* Tail recursive
*)
val run_game_turn : game_state -> game_state

(*
* Generates the initial state of the game using information from various text
* files. Randomizes the pocamon each player has and the starting pocamon
*)
val gen_initial_state : unit -> game_state

(*
* Calls gen_initial_state then passes it into do_battle to start the game
* Also requests player names and game mode from the user
*)
val start  : unit -> unit
