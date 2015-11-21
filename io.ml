open Types

type command = Up | Down | Enter | Action of action | Fight | Pocamon
| Run | Back | Save | Load

type screen_state = Out | Moves | Pocamon_List of int | Talking of string

let match_phrase (str: bytes) (regex: bytes) :bool =
  Str.string_match (Str.regexp regex) str 0

let get_switch (str: bytes) :command option =
  let words = Str.split (Str.regexp " ") str in
  if (List.length words = 0) || (List.length words > 2)
  then None
  else Some (Action (Switch (List.nth words 1)))

let process_input (s: bytes) :command option =
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
  else Some (Action (Move trim_s))

let string_to_box (s: bytes) :bytes =
  "* " ^ s

let create_pocamon_ascii (pc: pocamon) :bytes =
  pc.ascii

let create_health_bar (pc: pocamon) :bytes =
  let rec gen_hp_bar (equals: int) (empty: int) (s: bytes) :bytes =
    if empty = 0 then s ^ "]"
    else if equals = 0 then gen_hp_bar 0 (empty - 1) (s ^ " ")
    else gen_hp_bar (equals - 1) empty (s ^ "=") in

  let status_to_string (status: pStatus) :bytes =
    match status with
    | SNormal -> "   "
    | SPoison -> "PSN"
    | SBurn -> "BRN"
    | SSleep _ -> "SLP"
    | SParalyze -> "PAR"
    | SFreeze _ -> "FRZ" in

  let frac = (float_of_int pc.health) /. (float_of_int pc.stats.max_hp) in
  let max_hp = 22 in
  let equals = (int_of_float (frac *. (float_of_int max_hp))) in
  (gen_hp_bar equals (max_hp - equals) "[")
  ^ " " ^ (string_of_int pc.health) ^ "/" ^ (string_of_int pc.stats.max_hp)
  ^ " " ^ status_to_string (pc.status) ^ " "

let art_joiner (art1: bytes) (art2: bytes) :bytes =
  let rec art_help (art1: bytes list) (art2: bytes list) res :bytes =
    match art1, art2 with
    | h1::t1, h2::t2 -> art_help t1 t2 (res ^ "\n" ^ h1 ^ "    ||    " ^ h2)
    | _, _ -> res in

  art_help (Str.split (Str.regexp "\n") art1)
           (Str.split (Str.regexp "\n") art2)
           ""

let gen_moves pi :bytes =
  let rec moves_help (m_list: move list) i (res: bytes) :bytes =
    match m_list with
    | [] -> if i = 0
      then moves_help [] (i-1) (res ^ (string_to_box " "))
      else res
    | h::t -> moves_help t (i-1) ((string_to_box h.name) ^ res) in
  moves_help pi.player_one_active_pocamon.moves 4 ""

let gen_pocamon ps i :bytes =
  let rec pocamon_help (p_list: pocamon list) i n l res :bytes =
    match p_list with
    | [] -> if i = 0
      then pocamon_help [] (i-1) n l (res ^ (string_to_box " "))
      else res
    | h::t -> if n > 3 && l > 4
    then res ^ "\n" ^ (string_to_box "...")
    else pocamon_help t (i-1) (n+1) l (res ^ "\n" ^ (string_to_box h.name)) in
  pocamon_help ps.pocamon_list 4 0 (List.length ps.pocamon_list) ""

let gen_talking (s: bytes) :bytes =
  let rec talking_help (words: bytes list) i (res :bytes) :bytes =
    match words with
    | [] -> if i = 0
      then talking_help [] (i-1) (res ^ (string_to_box " "))
      else res
    | h::t -> talking_help t (i-1) ((string_to_box h) ^ res) in
  let lines = Str.split (Str.regexp "\n") s in
  talking_help lines 4 ""

let gen_out pi :bytes =
  (string_to_box ("What will " ^ pi.player_one_name ^ " do?")) ^
  (string_to_box "Fight        |        Bag") ^
  (string_to_box "Pocamon      |        Run") ^
  (string_to_box " ")

let gen_text ps pi ss :bytes =
  match ss with
  | Out -> gen_out pi
  | Moves -> gen_moves pi
  | Pocamon_List i -> gen_pocamon ps i
  | Talking s -> gen_talking s

let print_screen_debug ps pi ss =
  let star_bar = "********************************************"^
  "*******************************" in
  let art = art_joiner (create_pocamon_ascii pi.player_one_active_pocamon)
  (create_pocamon_ascii pi.player_two_active_pocamon) in
  let health_bar = (create_health_bar pi.player_one_active_pocamon)
  ^ "  " ^ (create_health_bar pi.player_two_active_pocamon) in
  let box = gen_text ps pi ss in
  star_bar ^ "\n" ^ art ^ "\n" ^ health_bar ^ "\n" ^ star_bar ^
  "\n" ^ box ^ "\n" ^ star_bar

let print_screen ps pi ss =
  let str = print_screen_debug ps pi ss in
  print_string str