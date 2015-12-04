open Types

module PokeDex = Map.Make(String)
let dexmap = PokeDex.empty

let dexmap = PokeDex.add "KARATE CHOP" {name="KARATE CHOP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_pp=25; pp=25}
