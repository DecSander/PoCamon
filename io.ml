type command = Up | Down | Enter | Action of action | Fight | Bag | Pocamon
| Run | Back | Save | Load

let match_phrase (str: string) (regex: string) :bool =
  Str.string_match (Str.regexp regex) str 0

let get_switch (str: string) :command option =
  let words = Str.split " " str in
  if List.length words > 2
  then None
  else Some (Action (Switch (List.nth 1)))

let process_input (s: string) :command option =
  let trim_s = String.uppercase (String.trim s) in
  if match_phrase trim_s "^UP$" then Some Up
  else if match_phrase trim_s "^DOWN$" then Some Down
  else if match_phrase trim_s "^$" then Some Enter
  else if match_phrase trim_s "^FIGHT$" then Some Fight
  else if match_phrase trim_s "^POCAMON$" then Some Pocamon
  else if match_phrase trim_s "^RUN$" then Some Run
  else if match_phrase trim_s "^BACK$" then Some Back
  else if match_phrase trim_s "^SAVE$" then Some Save
  else if match_phrase trim_s "^LOAD$" then Some Load
  else if match_phrase trim_s "^SWITCH" then get_switch trim_s
  else Some (Action of (Move of trim_s))

let string_to_box (s: bytes) :bytes =
  "* " ^ s

let create_pocamon_ascii (pc: pocamon) :bytes =
  pocamon.ascii

let create_health_bar (pc: pocamon) :bytes =
  let rec gen_hp_bar (equals: int) (empty: int) (s: bytes) :bytes =
    if empty = 0 then s ^ "]"
    else if equals = 0 then gen_hp_bar 0 (empty - 1) (s ^ " ")
    else gen_hp_bar (equals - 1) empty (s ^ "=") in

  let status_to_string (status: pStatus) :bytes =
  match stat with
  | SNormal -> "   "
  | SPoison -> "PSN"
  | SBurn -> "BRN"
  | SSleep -> "SLP"
  | SParalyze -> "PAR"
  | SFreeze -> "FRZ" in

  let frac = (float_of_int pc.health) /. (float_of_int pc.stats.max_HP) in
  let max_hp = 22 in
  let equals = (int_of_float (frac *. (float_of_int max_hp)))
  (gen_HP_bar equals (max_hp - equals) "[")
  ^ " " ^ (string_of_int pc.health) ^ "/" ^ (string_of_int pc.stats.max_HP)
  ^ " " ^ status_to_string (pc.status) ^ " "

let art_joiner (art1: bytes) (art2: bytes) :bytes =
  let rec art_help (art1: bytes list) (art2: bytes list) result :bytes =
    match art1, art2 with
    | h1::t1, h2::t2 -> art_help t1 t2 (result ^ "\n" ^ h1 ^ "    ||    " ^ h2)
    | _, _ -> result in

  art_help (Str.split (Str.regexp "\n") art1)
           (Str.split (Str.regexp "\n") art2)
           ""

let create_help (c_list: command list) :bytes =
  let command_to_string (cmd: command) :bytes =
    match cmd with
    | Up -> "Up"
    | Down -> "Down"
    | Enter -> "Enter"
    | Fight -> "Fight"
    | Pocamon -> "Pocamon"
    | Run -> "Run"
    | Back -> "Back"
    | Save -> "Save"
    | Load -> "Load"
    | Action -> "<Move> \n Switch <Pocamon>" in

  let rec help_help (cl: command list) (result: bytes) :bytes =
    match cl with with
    | [] -> result
    | h::t ->
      help_help t (result ^ "\n" ^ (string_to_box (command_to_string h))) in

  help_help c_list ""

let create_available_pocamon (p_list: pocamon_list) (i: int) :bytes =
  let start = if List.length p_list <= 4 then 0 else i in
  let ellipses = (List.length p_list > 4) && (i = ((List.length p_list) - 4)) in
  let end = if List.length p_list <= 4 then List.length else
    if ellipses then i + 4 else i + 3

let create_available_moves (pc: pocamon) :bytes =

let print_screen (ps: player_state) (pi: public_info) (ss: screen_state) =
  let final_str = "" in
  let top_bar = "********************************************"^
  "*******************************" in
  let art1 = create_pocamon_ascii pi.player_one_active_pocamon in
  let art2 = create_pocamon_ascii pi.player_two_active_pocamon in
  let art = art_joiner art1 art2 in
  let bar1 = create_health_bar pi.player_one_active_pocamon in
  let bar2 = create_health_bar pi.player_two_active_pocamon in
  let health_bar = bar1 ^ "  " ^ bar2 in
  let middle_bar = top_bar in
  let box = gen_text ps pi ss in
  let end_bar = middle_bar
  print_string (top_bar ^ "\n" ^ art ^ "\n" ^ health_bar ^ "\n" ^ middle_bar ^
  "\n" ^ box ^ "\n" ^ end_bar)