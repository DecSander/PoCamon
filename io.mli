open Pocamon

type command = Up | Down | Enter | Action of action | Fight | Bag | Pocamon
| Run | Back

(*
 * Takes a string and parses it using regex to return the command corresponding
 * to that string. If the parser is unable to determind the command, None is
 * returned
 *)
val process_input : string -> command option

(* Prints the appropriate screen for the given command specified *)
val print_screen : game_state -> command -> unit

val create_pocamon_ascii : pocamon -> bytes

val create_health_bar : pocamon -> bytes

val create_available_pocamon : pocamon list -> bytes

val create_available_moves : pocamon -> bytes

val create_battle : battle_status -> bytes

val create_help : command list -> bytes

val art_joiner : bytes -> bytes -> bytes
