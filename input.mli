type command = Up | Down | Enter | Action of action | Fight | Bag | Pocamon
| Run | Back

(*
 * Takes a string and parses it using regex to return the command corresponding
 * to that string. If the parser is unable to determind the command, None is
 * returned
 *)
val process_input : string -> command option