open Io

let command_to_string co =
  match co with
  | None -> "None\n"
  | Some v -> (match v with
    | Up -> "Up"
    | Down -> "Down"
    | Enter -> "Enter"
    | Action _ -> "Action"
    | Fight -> "Fight"
    | Pocamon -> "Pocamon"
    | Run -> "Run"
    | Back -> "Back"
    | Save -> "Save"
    | Load -> "Load");;

TEST "Up" = process_input "up" = Some Up
TEST "Down" = process_input "down" = Some Down
TEST "Trimming" = process_input " down \t" = Some Down
TEST "Uppercase" = process_input "DOWN" = Some Down
TEST "Lowercase" = process_input "down" = Some Down
TEST "Mixed Case" = process_input "dOwN" = Some Down
TEST "Enter" = process_input "" = Some Enter
TEST "Fight" = process_input "fight" = Some Fight
TEST "Pocamon" = process_input "pocamon" = Some Pocamon
TEST "Run" = process_input "run" = Some Run
TEST "Back" = process_input "back" = Some Back