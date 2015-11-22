open Io
open Types

TEST "Up" = process_input "up" = Some Up
TEST "Down" = process_input "down" = Some Down
TEST "Trim" = process_input " down \t" = Some Down
TEST "Uppercase" = process_input "DOWN" = Some Down
TEST "Lowercase" = process_input "down" = Some Down
TEST "Mixed Case" = process_input "dOwN" = Some Down
TEST "Enter" = process_input "" = Some Enter
TEST "Fight" = process_input "fight" = Some Fight
TEST "Pocamon" = process_input "pocamon" = Some Pocamon
TEST "Run" = process_input "run" = Some Run
TEST "Back" = process_input "back" = Some Back
TEST "Save" = process_input "save" = Some Save
TEST "Load" = process_input "load" = Some Load
TEST "Switch" = process_input "switch raichu" = Some (Action (Switch "RAICHU"))
TEST "Bad Switch" = process_input "switch james jfsdf" = None
TEST "Move" = process_input "win" = Some (Action (Move "WIN"))
TEST "2-word move" = process_input "two move" = Some (Action (Move "TWO MOVE"))

TEST "Yes" = process_selection "Yes" = Some Yes
TEST "No" = process_selection "No" = Some No
TEST "y" = process_selection "y" = Some Yes
TEST "n" = process_selection "n" = Some No
TEST "Trim" = process_selection "  \t yes \t  " = Some Yes
TEST "Bad input" = process_selection "sfdsd" = None
TEST "No at end" = process_selection "jamno" = None
TEST "Yes in middle" = process_selection "jkyeskl" = None