(*
* Retrieves information from various text files containing information
* about pocamon
* Validates the text, puts it together into a game_state, and returns it
*)
val get_dataset : bytes -> game_state

(*
* Validates the text from the file and ensure that it is formatted as necessary
*)
val validate_dataset : bytes -> bool