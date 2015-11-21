open Types

type command = Up | Down | Enter | Action of action | Fight | Bag | Pocamon
| Run | Back | Save | Load

type screen_state = Out | Moves of int | Pocamon of int | Bag |
Result (string * bool * string * pEffect)

(*
 * Takes a string and parses it using regex to return the command corresponding
 * to that string. If the parser is unable to determind the command, None is
 * returned
 *)
val process_input : string -> command option

(* Prints the appropriate screen for the given command specified *)
val print_screen : game_state -> screen_state -> unit

(* The below functions will be used in creating print_screen, but will
 * be removed from the mli upon implementation because they should
 * not be exposed in the interface
 *)

(*val create_pocamon_ascii : pocamon -> bytes

val create_health_bar : pocamon -> bytes

val create_available_pocamon : pocamon list -> bytes

val create_available_moves : pocamon -> bytes

val create_help : command list -> bytes

val art_joiner : bytes -> bytes -> bytes
*)
