open Types

(* Returns generic pocamon if pocamon with given name exists.
 * Raises failure otherwise *)
val get_pocamon: string -> dex_pocamon

(* Returns move if move with given name exists.Raises failure otherwise *)
val get_move: string -> move

(* Returns a random pocamon *)
val get_random_pocamon: unit -> pocamon