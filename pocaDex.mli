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


(* FOR TESTING PURPOSES ONLY
 * [get_poca_with_moves pocaname movelist] returns the pocamon designated by 
 * [pocaname] with the moves designated in [movelist]
 *
 * Precondtion: [movelist] must contains valid, uppercase move names 
 *              the size of [movelist] <= 4  and > 0
 *              [pocaname] is a valid pocamon name      *)
val get_poca_with_moves: string -> string list -> pocamon

(* FOR TESTING PURPOSES ONLY 
 * [get_move movename] returns the move designated by [movename] 
 *
 * Precondtion: [movename] is a valid, uppercase move *)
val get_move: string -> move