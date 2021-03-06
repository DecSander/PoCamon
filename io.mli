open Types

type command = Up | Down | Enter | Action of action | Fight | Pocamon
| Run | Back | Bag

type screen_state = Out | Moves | Pocamon_List of int | Talking of string

type yn = Yes | No

val io_channel : in_channel
val readl : in_channel -> string
val out_channel: out_channel
val prints : string -> unit

(*
 * Takes a string and parses it using regex to return the command corresponding
 * to that string. If the parser is unable to determind the command, None is
 * returned
 *)
val process_input : string -> command option

val process_selection: string -> yn option

(* Prints the appropriate screen for the given command specified *)
val print_screen : player_state -> public_info -> screen_state -> unit

val print_start : string -> unit

val print_size_screen : unit -> unit

(* Collects input with autocomplete magic
 * [get_input words defaults] gets the input where user can autocomple to
 * [words] and is shown defaults [defaults]
 * Preconditon: [defaults] is not empty *)
val get_input : string list -> string list -> string

val create_public_info: game_state -> public_info

val get_against_ai: unit -> ai

val wait_for_enter: game_state -> player_state -> screen_state -> unit