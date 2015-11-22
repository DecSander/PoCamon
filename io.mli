open Types

type command = Up | Down | Enter | Action of action | Fight | Pocamon
| Run | Back | Save | Load

type screen_state = Out | Moves | Pocamon_List of int | Talking of string

type yn = Yes | No

(*
 * Takes a string and parses it using regex to return the command corresponding
 * to that string. If the parser is unable to determind the command, None is
 * returned
 *)
val process_input : string -> command option

val process_selection: string -> yn option

(* Prints the appropriate screen for the given command specified *)
val print_screen : player_state -> public_info -> screen_state -> unit

val print_start : screen_state -> unit