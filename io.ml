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

let add_spaces (s: bytes) (len: int) :bytes =
  let rec add_help st i =
    if i <= 0
    then st
    else add_help (st ^ " ") (i-1) in
  add_help s (len - (String.length s))

let create_pocamon_ascii (pc: pocamon) :bytes =
  pc.ascii

let create_health_bar (pc: pocamon) :bytes =
  let rec gen_hp_bar (equals: int) (empty: int) (s: bytes) :bytes =
    if empty <= 0 && equals <= 0 then s ^ "]"
    else if equals <= 0 then gen_hp_bar 0 (empty - 1) (s ^ " ")
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
  let max_hp_int = 22 in
  let health = string_of_int pc.health in
  let max_hp = string_of_int pc.stats.max_hp in
  let health_spaced = (Bytes.make (3 - (String.length health)) ' ') ^ health in
  let max_hp_spaced = (Bytes.make (3 - (String.length max_hp)) ' ') ^ max_hp in
  let equals = (int_of_float (frac *. (float_of_int max_hp_int))) in
  (gen_hp_bar equals (max_hp_int - equals) "[")
  ^ " " ^ health_spaced ^ "/" ^ max_hp_spaced
  ^ " " ^ status_to_string (pc.status) ^ " "

let art_joiner (art1: bytes) (art2: bytes) :bytes =
  let rec art_help (art1: bytes list) (art2: bytes list) res :bytes =
    match art1, art2 with
    | h1::t1, h2::t2 ->
      art_help t1 t2
        (res ^ "\n" ^ (add_spaces h1 32) ^ "    ||    " ^ (add_spaces h2 32))
    | _, _ -> res in
  art_help (Str.split (Str.regexp "\n") art1)
           (Str.split (Str.regexp "\n") art2) ""

let gen_moves ps :bytes =
  let rec moves_help (m_list: move list) i (res: bytes) :bytes =
    match m_list with
    | [] -> if i <> 0
      then moves_help [] (i-1) (res ^ (string_to_box " ") ^ "\n")
      else res
    | h::t -> moves_help t (i-1) (res ^ (string_to_box h.name) ^ "\n") in
  moves_help ps.active_pocamon.moves 4 ""

(*From 99 Problems in OCaml https://ocaml.org/learn/tutorials/99problems.html*)
let slice l i k =
  let rec take n = function
    | [] -> []
    | h :: t -> if n = 0 then [] else h :: take (n-1) t
  in
  let rec drop n = function
    | [] -> []
    | h :: t as l -> if n = 0 then l else drop (n-1) t
  in
  take (k - i + 1) (drop i l)

let gen_pocamon (ps: player_state) i :bytes =
  let start = i in
  let end_lst = min (i+3) ((List.length ps.pocamon_list) - 1) in
  let ellipses = end_lst <> ((List.length ps.pocamon_list) - 1) in
  let p_strings =
    List.map (fun (p:pocamon) -> p.name) ps.pocamon_list in
  let pl =
    if ellipses
    then slice p_strings start end_lst
    else "..."::(slice p_strings start (end_lst - 1)) in
  let rec pocamon_help (lines: string list) i (res :bytes) :bytes =
    match lines with
    | [] -> if i <> 0
      then pocamon_help [] (i-1) (res ^ (string_to_box " ") ^ "\n")
      else res
    | h::t -> pocamon_help t (i-1) ((string_to_box h) ^ "\n" ^ res) in
  pocamon_help pl 4 ""

let gen_talking (s: bytes) :bytes =
  let rec talking_help (words: bytes list) i (res :bytes) :bytes =
    match words with
    | [] -> if i <> 0
      then talking_help [] (i-1) (res ^ (string_to_box " ") ^ "\n")
      else res
    | h::t -> talking_help t (i-1) ((string_to_box h) ^ "\n" ^ res) in
  let lines = Str.split (Str.regexp "\n") s in
  talking_help lines 4 ""

let gen_out ps :bytes =
  (string_to_box ("What will " ^ ps.name ^ " do?")) ^ "\n" ^
  (string_to_box "Fight        |        Bag") ^ "\n" ^
  (string_to_box "Pocamon      |        Run") ^ "\n" ^
  (string_to_box " ") ^ "\n"

let gen_names pi :bytes =
  let l1 = String.length pi.player_one_active_pocamon.name in
  let l2 = String.length pi.player_two_active_pocamon.name in
  let leftl1 = Bytes.make ((36 - l1) / 2) ' ' in
  let leftl2 = Bytes.make ((36 - l2) / 2) ' ' in
  leftl1 ^ pi.player_one_active_pocamon.name ^ leftl1 ^
  "  " ^ leftl2 ^ pi.player_two_active_pocamon.name ^ leftl2

let gen_text ps pi ss :bytes =
  match ss with
  | Out -> gen_out ps
  | Moves -> gen_moves ps
  | Pocamon_List i -> gen_pocamon ps i
  | Talking s -> gen_talking s

let print_screen_debug ps pi ss =
  let star_bar = "********************************************"^
  "*******************************" in
  let art = art_joiner (create_pocamon_ascii pi.player_one_active_pocamon)
  (create_pocamon_ascii pi.player_two_active_pocamon) in
  let health_bar = (create_health_bar pi.player_one_active_pocamon)
  ^ " " ^ (create_health_bar pi.player_two_active_pocamon) in
  let names = gen_names pi in
  let box = gen_text ps pi ss in
  star_bar ^ "\n" ^ names ^ art ^ "\n" ^ health_bar ^ "\n" ^ star_bar ^
  "\n" ^ box ^ star_bar

let print_screen ps pi ss =
  let str = print_screen_debug ps pi ss in
  print_string str
