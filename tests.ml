open Types
open Assertions

(******************************************************************************)
(** Unit tests for PocaDex ****************************************************)
(******************************************************************************)
open PocaDex


let moves = [ "GROWL"; "SELFDESTRUCT"; "PSYCHIC"; "RAZOR LEAF"; "TOXIC"; "SWORDS DANCE"; "HYPER BEAM"; "TAKE DOWN"; "PECK"; "POISON STING"; "STRENGTH"; "SOFTBOILED"; "LOVELY KISS"; "ABSORB"; "DRILL PECK"; "BUBBLEBEAM"; "ICE PUNCH"; "BODY SLAM"; "HYDRO PUMP"; "SLUDGE BOMB"; "SLASH"; "GUILLOTINE"; "ICY WIND"; "POISON GAS"; "SHADOW BALL"; "HORN ATTACK"; "SWIFT"; "EXTREMESPEED"; "MEGA PUNCH"; "THUNDERPUNCH"; "SURF"; "ICE BEAM"; "THUNDER WAVE"; "TACKLE"; "VINE WHIP"; "THUNDERBOLT"; "BARRIER"; "SPORE"; "FIRE PUNCH"; "SOLARBEAM"; "HI JUMP KICK"; "BUBBLE"; "EMBER"; "HORN DRILL"; "AMNESIA"; "GLARE"; "SHARPEN"; "VICEGRIP"; "FLAME WHEEL"; "ROCK THROW"; "ZAP CANNON"; "FLAMETHROWER"; "WATER GUN"; "RECOVER"; "STOMP"; "SLEEP POWDER"; "FLY"; "DEFENSE CURL"; "ROCK SMASH"; "THUNDER"; "MEGA KICK"; "MEDITATE"; "GIGA DRAIN"; "KARATE CHOP"; "SLUDGE"; "LICK"; "ACID"; "STUN SPORE"; "LEECH LIFE"; "AGILITY"; "DRAGONBREATH"; "SPLASH"; "FURY CUTTER"; "CUT"; "FISSURE"; "SCREECH"; "ACID ARMOR"; "SLAM"; "VITAL THROW"; "CONSTRICT"; "ANCIENTPOWER"; "TAIL WHIP"; "CRABHAMMER"; "SCRATCH"; "JUMP KICK"; "FIRE BLAST"; "QUICK ATTACK"; "DIG"; "WING ATTACK"; "MACH PUNCH"; "THUNDERSHOCK"; "SING"; "CROSS CHOP"; "DOUBLE EDGE"; "BLIZZARD"; "SUBMISSION"; "HYPNOSIS"; "HARDEN"; "SMOG"; "MEGA DRAIN"; "STRING SHOT"; "POWDER SNOW"; "SCARY FACE"; "EXPLOSION"; "SKY ATTACK"; "AURORA BEAM"; "POUND"; "LEER"; "EGG BOMB"; "WATERFALL"; "GROWTH"; "WITHDRAW"; ]



TEST_UNIT "Try to find all moves" =
  let errors = List.fold_left (fun acc m->
    try let _ = (get_move m) in acc
    with err -> (Printexc.to_string err) ^"; "^acc) "" moves in
  if (String.length errors) = 0
  then () else failwith errors

TEST "normal get move name" = (get_move "POUND").name = "POUND"
TEST "normal get move move_type" = (get_move "POUND").move_type = TNormal
TEST "normal get move status_effect" = (get_move "POUND").status_effect = MNormal
TEST "normal get move status_probability" = (get_move "POUND").status_probability = 100
TEST "normal get move accuracy" = (get_move "POUND").accuracy = 100
TEST "normal get move damage" = (get_move "POUND").damage = 40
TEST "normal get move max_pp" = (get_move "POUND").max_pp = 35
TEST "normal get move pp" = (get_move "POUND").pp = 35
TEST "normal get move move_category" = (get_move "POUND").move_category = EPhysical
TEST "normal get move move_category" = (get_move "POUND").effect = MNone
TEST "normal get move" = (get_move "POUND") = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=EPhysical; effect=MNone}

TEST "bad input throws exception" =
  try let _ =  get_move "Not_A_Move" in false
  with _ -> true

TEST "normal get_pocamon name" = (get_pocamon "RAPIDASH").name =  "RAPIDASH"

TEST "normal get_pocamon learnable_moves" = (get_pocamon "RAPIDASH").learnable_moves = ["FIRE BLAST";"GROWL";"EMBER";"HYPER BEAM";"TOXIC";"TAKE DOWN";"AGILITY";"SWIFT";"STOMP";"TAIL WHIP";"FLAMETHROWER";]

TEST "normal get_pocamon stats" = (get_pocamon "RAPIDASH").stats = {max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;}

TEST "normal get_pocamon poca_type" = (get_pocamon "RAPIDASH").poca_type = ("FIRE", "FIRE")

TEST "normal get_pocamon ascii" = (get_pocamon "RAPIDASH").ascii =

"   , ??OO==??    7===Z
  O ,?7O??=?????????7ZZZ7Z7Z
   O~ ,,~?77??????ZZZ
     ,?O~~ Z7ZZZZ ZZZ         Z
     O,~Z~~Z ZZZZ     ==??Z=7 Z
      ~~~~~    7?==7=???????ZZZ
       O~~~~Z?????7Z7ZZ7ZZ??7
       O~~~,,,~,,,,,ZZZ7ZZZZ
     7  ~~,,,,,,,,,,,Z77777
     77?Z~~,,,,,,~~~~~====777
     O??? ?,,,Z~ZZ~~~ =====7777
    ,~77   ,,~  ??~~~?===?==777
     ~     ~,  77?7 ???==?7=777
      ?O   ?7???O?77? ?=?7?77??
           ~7ZZ O?===??ZZ77??=="

TEST_UNIT "get_random_pocamon name" =
  let errors = ref "" in
    for i=0 to 1000 do
       try let _ = get_pocamon (get_random_pocamon ()).name in ()
       with err -> errors := (Printexc.to_string err) ^ !errors
    done;
  if (String.length (!errors)) = 0
  then () else failwith !errors

(******************************************************************************)
(** Unit tests for IO *********************************************************)
(******************************************************************************)
open Io

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

let () = Pa_ounit_lib.Runtime.summarize()
