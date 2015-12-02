open Types

type command = Up | Down | Enter | Action of action | Fight | Pocamon
| Run | Back | Save | Load | Bag

type screen_state = Out | Moves | Pocamon_List of int | Talking of string

type yn = Yes | No

(*let io_channel = open_in "test_inputs.txt"*)
let io_channel = Pervasives.stdin
let readl io = flush stdout; input_line stdin

let match_phrase (str: bytes) (regex: bytes) :bool =
  Str.string_match (Str.regexp regex) str 0

let get_switch (str: bytes) :command option =
  let words = Str.split (Str.regexp " ") str in
  if (List.length words < 2)
  then None
  else Some (Action (Switch (List.nth words 1)))

let process_input (s: bytes) :command option =
  let trim_s = String.uppercase (String.trim s) in
  if match_phrase trim_s "^UP$" then Some Up
  else if match_phrase trim_s "^DOWN$" then Some Down
  else if match_phrase trim_s "^$" then Some Enter
  else if match_phrase trim_s "^FIGHT$" then Some Fight
  else if match_phrase trim_s "^POCAMON$" then Some Pocamon
  else if match_phrase trim_s "^BAG$" then Some Bag
  else if match_phrase trim_s "^RUN$" then Some Run
  else if match_phrase trim_s "^BACK$" then Some Back
  else if match_phrase trim_s "^SAVE$" then Some Save
  else if match_phrase trim_s "^LOAD$" then Some Load
  else if match_phrase trim_s "^SWITCH" then get_switch trim_s
  else Some (Action (Move trim_s))

let process_selection (s: bytes) :yn option =
  let trim_s = String.uppercase (String.trim s) in
  if match_phrase trim_s "^Y" then Some Yes
  else if match_phrase trim_s "^N" then Some No
  else None


let string_to_box (s: bytes) :bytes =
  "* " ^ s

(* From http://stackoverflow.com/questions/10068713/string-to-list-of-char *)
let explode s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (String.make 1 (s.[i]) :: l) in
  exp ((String.length s) - 1) []

let length_no_color (s: bytes) :int =
  let rec length_helper xs res :int =
    (match xs with
    | [] -> res
    | h::t ->
      if "\027[28m" > h && h < "\027[41m"
      then length_helper t res
      else length_helper t (1 + res)) in
  length_helper (explode s) 0

let add_spaces (s: bytes) (len: int) :bytes =
  let rec add_help st i =
    if i <= 0
    then st
    else add_help (st ^ " ") (i-1) in
  add_help s (len - (length_no_color s))

let create_pocamon_ascii (pc: pocamon) :bytes =
  let color = "\027" ^ (match fst pc.poca_type with
  | TNormal -> "[97m"
  | TFire -> "[31m"
  | TWater -> "[34m"
  | TElectric -> "[33m"
  | TGrass -> "[32m"
  | TIce -> "[94m"
  | TFighting -> "[90m"
  | TPoison -> "[95m"
  | TGround -> "[90m"
  | TFlying -> "[93m"
  | TPsychic -> "[35m"
  | TBug -> "[92m"
  | TRock -> "[90m"
  | TGhost -> "[35m"
  | TDragon -> "[35m") in

  let rec ascii_help (art: bytes list) (res: bytes) :bytes =
    match art with
    | h::t -> ascii_help t (res ^ "\n" ^ color ^ h)
    | _ -> res in
  ascii_help (Str.split (Str.regexp "\n") pc.ascii) ""

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
        (res ^ "\n"^(add_spaces h1 36)^"   \027[97m ||    "^(add_spaces h2 36))
    | _, _ -> res in
  (art_help (Str.split (Str.regexp "\n") art1)
            (Str.split (Str.regexp "\n") art2) "") ^ "\027[97m"

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
  let ellipses = end_lst = ((List.length ps.pocamon_list) - 1) in
  let p_strings =
    List.map (fun (p:pocamon) -> p.name) ps.pocamon_list in
  let pl =
    if ellipses
    then slice p_strings start end_lst
    else (slice p_strings start (end_lst - 1))@["..."] in
  let rec pocamon_help (lines: string list) i (res :bytes) :bytes =
    match lines with
    | [] -> if i <> 0
      then pocamon_help [] (i-1) (res ^ (string_to_box " ") ^ "\n")
      else res ^ "\n"
    | h::t -> pocamon_help t (i-1) (res ^ "\n" ^ (string_to_box h)) in
  Bytes.sub (pocamon_help pl 4 "") 1 (Bytes.length (pocamon_help pl 4 "") - 1)

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

let star_bar = "********************************************"^
  "*******************************"

let print_screen_debug ps pi ss =
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

let ascii_pokeball = " \027[34m



                              .;:**'
                              `
  .:XHHHHk.              db.   .;;.     dH  MX               \027[33m
oMMMMMMMMMMM        MM  dMMP :MMMMMR   MMM  MR      ~MRMN
QMMMMb  'MMX        NMMMMP !MX'  M~   MMM MMM  .oo. XMMM 'MMM
  `MMM.   )M> :X!Hk. QMMM   XMQ.o'  .  MMMMMMM X?XMMM MMM>!MMP
   'MMMb.dM! XM M'?M QMMMMX.`MMMMMMMM~ MM MHM XM    MX MMXXMM
    ~MMMMM~ XMM. .XM XM`'MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP
     ?MMM>  YMMMMMM! MM   `?MMRb.    `'''   !L'MMMMM XM IMMM
      MMMX   'MMMM'  LM       ~%:           !Mh.''' dMI IMMP  \027[34m
      'MMM.                                             IMX
       ~M!M                                             IMP

\027[97m
                    PSHSHSHSHSHSHHSSHS - Kraby #93



"
let size_screen = "
|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                     Please size your terminal window.                        |
|                                                                              |
|                             ENTER to contiune.                               |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|                                                                              |
|.                                                                            .|
"
let print_size_screen () =
  print_string size_screen;
  let _ = readl io_channel in ()


let print_start s =
  print_string (ascii_pokeball ^ star_bar ^ "\n" ^
                (string_to_box s))


(*****************************************************************************)
(*                                 Autocompleter                             *)
(*****************************************************************************)

(* Setup the terminal for nonconical input to use the autocorrect
 * Credit to Niki Yoshiuchi from
 *http://stackoverflow.com/questions/4130048/recognizing-arrow-keys-with-stdin*)
let setup () =
  let terminfo = Unix.tcgetattr Unix.stdin in
  let newterminfo = Unix.{terminfo with c_icanon = false; c_vmin = 1;
  c_vtime = 100000; c_echoe=false} in
  at_exit (fun _ -> Unix.tcsetattr Unix.stdin Unix.TCSAFLUSH terminfo);
  Unix.tcsetattr Unix.stdin Unix.TCSAFLUSH newterminfo;
  terminfo

(* Return the terminal back to its normal state *)
let breakdown (terminfo) : unit =
  Unix.tcsetattr Unix.stdin Unix.TCSAFLUSH terminfo

let get_word (lst: string list) =
  List.fold_right (fun v a -> v^a) lst ""

let find_back (lst: string list): bool =
  List.mem "\127" lst

let find_tab (lst: string list): bool =
  List.mem "\t" lst

let find_newline (lst: string list): bool =
  List.mem "\n" lst

let remove_last_one (lst: string list): string list =
  match List.rev lst with
  | [] -> []
  | h::t -> List.rev t

let remove_last_two (lst: string list): string list =
  match List.rev lst with
  | [] -> []
  | h1::h2::t -> List.rev t
  | h::t -> List.rev t

let rec string_contains s sub : bool =
  let sub_length = String.length sub in
  if String.length s < sub_length then false
  else if String.sub s 0 sub_length = sub then true
  else string_contains (String.sub s 1 ((String.length s) - 1)) sub

let find_matches words acc =
  let words = List.map (fun s -> String.lowercase s) words in
  let matches = (List.filter (fun s -> (String.sub s 0
                (min (String.length (get_word acc)) (String.length s)))
                = String.lowercase (get_word acc)) words) in
  List.sort (fun v1 v2 -> String.compare v1 v2) matches

let print_text s : unit=
   print_string ("\r"^(Bytes.make (70) ' '));
   print_string("\r|>"^(s));
   flush Pervasives.stdout


(* Collects input with autocomplete magic
 * [get_input words defaults] gets the input where user can autocomple to
 * [words] and is shown defaults [defaults]
 * Preconditon: [defaults] is not empty *)
let get_input (words: string list) (defaults: string list) =
  let tinfo = setup () in
  print_newline () ;
  let rec go (acc: string list): string =

    let handle_back (): string =
      let newl = remove_last_two acc in
      print_text (get_word newl);
      go newl in

    let handle_tab (): string =
     let acc = remove_last_one acc in
      match find_matches words acc with
      | [] ->   failwith "Error: this should be handled by handle_typing"
      | h::t ->
         let w = get_word acc in
         let completed_word = w^
         (String.sub h (String.length w) (String.length h - String.length w)) in
         print_string ("\r"^(Bytes.make (70) ' '));
         print_string ("\027[97m\r|> \027[32m"^(completed_word));
         flush Pervasives.stdout;
         let c = really_input_string io_channel 1 in
         go ([h]@[c]) in

    let handle_typing (): string =
      match find_matches words acc with
      | [] -> let _ = Sys.command "printf '\\a'" in
          let newl = remove_last_one acc in
          print_text (get_word newl);
          go newl
      | h::t -> let w = get_word acc in
          print_string ("\r"^(Bytes.make (70) ' '));
          print_string ("\r\027[97m   "^h);
          print_string ("\r|> \027[32m"^w);
          flush Pervasives.stdout;
          go (acc@[really_input_string io_channel 1]) in

    let handle_defaults () =
      print_string ("\r"^(Bytes.make (70) ' '));
      print_string ("\r\027[97m   ");
      print_string (List.hd defaults);
      List.iter (fun s -> print_string (" | "^s)) (List.tl defaults);
      print_string ("\r|> ");
      flush Pervasives.stdout;
      go (acc@[really_input_string io_channel 1]) in

    match find_tab acc, find_back acc, find_newline acc, List.length acc with
    | _, _, _, 0 -> handle_defaults ()
    | _, _, true, _ -> print_string ("\027[97m "); breakdown tinfo; get_word acc
    | _ , true, _, _ ->  handle_back ()
    | true, _, _, _ -> handle_tab ()
    | false, false, false, _ -> handle_typing () in
    String.trim (go [])

(*****************************************************************************)
(*                                 Actions                                   *)
(*****************************************************************************)
let create_public_info g_state : public_info =
  {
    player_one_name = g_state.player_one.name;
    player_two_name = g_state.player_one.name;
    player_one_active_pocamon = g_state.player_one.active_pocamon;
    player_two_active_pocamon = g_state.player_two.active_pocamon;
    player_one_remaining_pocamon =
      List.length (g_state.player_one.pocamon_list);
    player_two_remaining_pocamon =
      List.length (g_state.player_one.pocamon_list);
  }

let rec wait_for_enter g_state p_state s_state : unit =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let input = get_input [""] [""] in
  match (process_input input) with
  | Some Enter -> ()
  | _ -> wait_for_enter g_state p_state s_state


let rec get_against_ai () : ai =
  print_start "Would you like to play against your rival, or a human?";
  let input = String.uppercase
    (get_input ["RIVAL";"HUMAN"; "ELITE7"] ["RIVAL";"HUMAN"; "ELITE7"]) in
    if input = "RIVAL" then Rival
    else if input = "HUMAN" then Human
    else if input = "ELITE7" then Elite
    else get_against_ai ()

