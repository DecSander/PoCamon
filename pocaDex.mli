open Types

(* Returns generic pocamon if pocamon with given name exists.
 * Raises failure otherwise *)
val get_pocamon: string -> dex_pocamon

(* Returns move if move with given name exists. Raises failure otherwise *)
val get_move: string -> move

(* Returns a random pocamon *)
val get_random_pocamon: unit -> pocamon

(* Returns the pocamon designated by name with randomized stats *)
val get_pocamon_by_name: string -> pocamon 

val get_different_pocamon: pocamon list -> pocamon