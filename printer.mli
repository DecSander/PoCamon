open Pocamon

(* Prints the appropriate screen for the given command specified *)
val print_screen : game_state -> command -> unit 

val create_pocamon_ascii : pocamon -> bytes

val create_health_bar : pocamon -> bytes

val create_available_pocamon : pocamon list -> bytes

val create_available_moves : pocamon -> bytes

val create_battle : battle_status -> bytes

val create_help : command list -> bytes

val art_joiner : bytes -> bytes -> bytes
