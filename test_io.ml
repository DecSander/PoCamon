open Io

let command_to_string c =
  match c with
  | Up -> "Up"
  | Down -> "Down"
  | Enter -> "Enter"
  | Action _ -> "Action"
  | Fight -> "Fight"
  | Pocamon -> "Pocamon"
  | Run -> "Run"
  | Back -> "Back"
  | Save -> "Save"
  | Load -> "Load"

process_input "Up"