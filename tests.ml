open Types
open Assertions

(******************************************************************************)
(** Unit tests for PocaDex ****************************************************)
(******************************************************************************)
open PocaDex


let moves = [ "GROWL"; "SELFDESTRUCT"; "PSYCHIC"; "RAZOR LEAF"; "TOXIC";
              "SWORDS DANCE"; "HYPER BEAM"; "TAKE DOWN"; "PECK"; "POISON STING";
              "STRENGTH"; "SOFTBOILED"; "LOVELY KISS"; "ABSORB"; "DRILL PECK";
              "BUBBLEBEAM"; "ICE PUNCH"; "BODY SLAM"; "HYDRO PUMP";
              "SLUDGE BOMB"; "SLASH"; "GUILLOTINE"; "ICY WIND"; "POISON GAS";
              "SHADOW BALL"; "HORN ATTACK"; "SWIFT"; "EXTREMESPEED";
              "MEGA PUNCH"; "THUNDERPUNCH"; "SURF"; "ICE BEAM"; "THUNDER WAVE";
              "TACKLE"; "VINE WHIP"; "THUNDERBOLT"; "BARRIER"; "SPORE";
              "FIRE PUNCH"; "SOLARBEAM"; "HI JUMP KICK"; "BUBBLE"; "EMBER";
              "HORN DRILL"; "AMNESIA"; "GLARE"; "SHARPEN"; "VICEGRIP";
              "FLAME WHEEL"; "ROCK THROW"; "ZAP CANNON"; "FLAMETHROWER";
              "WATER GUN"; "RECOVER"; "STOMP"; "SLEEP POWDER"; "FLY";
              "DEFENSE CURL"; "ROCK SMASH"; "THUNDER"; "MEGA KICK"; "MEDITATE";
              "GIGA DRAIN"; "KARATE CHOP"; "SLUDGE"; "LICK"; "ACID";
              "STUN SPORE"; "LEECH LIFE"; "AGILITY"; "DRAGONBREATH"; "SPLASH";
              "FURY CUTTER"; "CUT"; "FISSURE"; "SCREECH"; "ACID ARMOR"; "SLAM";
              "VITAL THROW"; "CONSTRICT"; "ANCIENTPOWER"; "TAIL WHIP";
              "CRABHAMMER"; "SCRATCH"; "JUMP KICK"; "FIRE BLAST";
              "QUICK ATTACK"; "DIG"; "WING ATTACK"; "MACH PUNCH";
              "THUNDERSHOCK"; "SING"; "CROSS CHOP"; "DOUBLE EDGE"; "BLIZZARD";
              "SUBMISSION"; "HYPNOSIS"; "HARDEN"; "SMOG"; "MEGA DRAIN";
              "STRING SHOT"; "POWDER SNOW"; "SCARY FACE"; "EXPLOSION";
              "SKY ATTACK"; "AURORA BEAM"; "POUND"; "LEER"; "EGG BOMB";
              "WATERFALL"; "GROWTH"; "WITHDRAW"; ]



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
TEST "normal get move" = (get_move "POUND") =
  { name="POUND";
    move_type=TNormal;
    status_effect=MNormal;
    status_probability=100;
    accuracy=100; damage=40;
    max_pp=35;
    pp=35;
    move_category=EPhysical;
    effect=MNone}

TEST "bad input throws exception" =
  try let _ =  get_move "Not_A_Move" in false
  with _ -> true

TEST "normal get_pocamon name" = (get_pocamon "RAPIDASH").name =  "RAPIDASH"

TEST "normal get_pocamon learnable_moves" =
  (get_pocamon "RAPIDASH").learnable_moves =
    ["FIRE BLAST";"GROWL";"EMBER";"HYPER BEAM";"TOXIC";
    "TAKE DOWN";"AGILITY";"SWIFT";"STOMP";"TAIL WHIP";"FLAMETHROWER";]

TEST "normal get_pocamon stats" = (get_pocamon "RAPIDASH").stats =
  {max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;}

TEST "normal get_pocamon poca_type" = (get_pocamon "RAPIDASH").poca_type =
  ("FIRE", "FIRE")

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
(** Unit tests for game *******************************************************)
(******************************************************************************)
open Game

let has_no_duplicates lst : bool =
  List.length (List.fold_left
    (fun acc x -> if List.mem x acc then acc else x::acc) [] lst)
  =
  List.length lst


TEST "test gen_initial_state" =
  let rec gen_states x acc =
    if x = 0 then acc else
      gen_states (x-1) (gen_initial_state ()::acc) in
  let states = gen_states 6 [] in
  not (List.mem false (List.fold_left (fun acc (x:game_state) ->
    (has_no_duplicates(x.player_one.pocamon_list)) ::
    (has_no_duplicates(x.player_two.pocamon_list)) :: acc) [] states))

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


(******************************************************************************)
(** Unit tests for fight *******************************************************)
(******************************************************************************)
open Types
open Fight

let tackle = {
          name = "TACKLE";
          move_type = TNormal;
          status_effect = MNormal;
          status_probability = 100;
          accuracy = 100;
          damage = 40;
          max_pp = 20;
          pp = 20;
          move_category = EPhysical;
          effect = MNone
      }

let dummy_move = {tackle with damage=0}
let attack_up = {dummy_move with effect=MAttack 1}
let speed_down = {dummy_move with effect=MSpeed (-1)}
let priority_hit = {dummy_move with effect=MPriorityHit}
let drain = {tackle with effect=MLeech}
let explode = {tackle with effect=MExplode}
let recover = {dummy_move with effect=MRecover}
let charge_hit = {tackle with effect=MCharge}
let charge_no_hit = {tackle with effect=MChargeNoHit}

let poca1 = {
      name = "p1 poca one";
      status = SNormal;
      moves = [tackle;tackle;tackle;dummy_move];
      poca_type = TFire, TGrass;
      health = 200;
      stats =
      {
        max_hp = 200;
        attack = 100;
        defense = 100;
        sp_defense = 100;
        sp_attack = 100;
        speed = 100
      };
      stat_mods =
      {
        attack = 0;
        defense = 0;
        sp_defense = 0;
        sp_attack = 0;
        speed = 0
      };
      charging = None;
      attack_immunity = false;
      ascii = "IMAGINE THIS GUY IN\n YOUR HEAD"
    }

let poca2 = {poca1 with name="p1 poca two"}
let poca3 = {poca1 with name="p2 poca one"}
let poca4 = {poca1 with name="p2 poca two"}

let asleep_poca1 = {poca1 with status=SSleep 4}
let poisoned_poca1 = {poca1 with status=SPoison}
let stat_changer_poca = {poca1 with moves=[attack_up;speed_down]}
let priority_poca = {poca1 with moves=[priority_hit];
  stats={poca1.stats with speed=0}}
let health_changer = {poca1 with moves=[explode;recover;drain]; health=100}
let charger = {poca1 with moves=[charge_hit; charge_no_hit; dummy_move];
                          stats={poca1.stats with speed=1000}}

let simple_game =
{
  player_one =
  {
    name = "player one";
    active_pocamon = poca1;
    pocamon_list = [poca2];
    is_computer = Human
  };
  player_two =
  {
    name = "player two";
    active_pocamon = poca3;
    pocamon_list = [poca4];
    is_computer = Human
  };
}


TEST "Test switch" = let new_state, _ =
  switch_pocamon poca2 simple_game.player_one simple_game false in
  let new_new_state, _ =
    switch_pocamon poca1 new_state.player_one new_state false in
  new_state.player_one.active_pocamon = poca2 &&
  new_new_state.player_one.active_pocamon = poca1

TEST "Test empty debuff" = let new_state, _ =
  apply_status_debuffs simple_game in
  new_state = simple_game

TEST "Test single poisoned poca" = let poison_game =
  {simple_game with player_one = {simple_game.player_one with
                                  active_pocamon = poisoned_poca1}} in
  let new_state, _ = apply_status_debuffs poison_game in
  new_state.player_one.active_pocamon.health <
  new_state.player_one.active_pocamon.stats.max_hp


let sleep_game = {simple_game with player_one = {simple_game.player_one with
                                                active_pocamon = asleep_poca1}}
let start_health = simple_game.player_two.active_pocamon.health

let new_state, _ = apply_fight_sequence sleep_game
  (FMove tackle) (FMove tackle)
let debuff_state, debuffs = apply_status_debuffs new_state

let new_state', _ = apply_fight_sequence debuff_state
  (FMove tackle) (FMove tackle)
let debuff_state', debuffs' = apply_status_debuffs new_state'

let new_state'', _ = apply_fight_sequence debuff_state'
  (FMove tackle) (FMove tackle)
let debuff_state'', debuffs'' = apply_status_debuffs new_state''


let new_state''', _ = apply_fight_sequence debuff_state''
  (FMove tackle) (FMove tackle)
let debuff_state''', debuffs''' = apply_status_debuffs new_state'''


let new_state'''', _ = apply_fight_sequence debuff_state'''
  (FMove tackle) (FMove tackle)
let _, _ = apply_status_debuffs new_state''''

TEST "Turn one sleep works" =
  (match new_state.player_one.active_pocamon.status with
  | SSleep x -> x = 3 &&
    (new_state.player_two.active_pocamon.health = start_health)
  | _ -> false)
TEST "Turn two sleep works" =
  (match new_state'.player_one.active_pocamon.status with
  | SSleep x -> x = 2 &&
    (new_state'.player_two.active_pocamon.health = start_health)
  | _ -> false)
TEST "Turn three sleep works" =
  (match new_state''.player_one.active_pocamon.status with
  | SSleep x -> x = 1 &&
    (new_state''.player_two.active_pocamon.health = start_health)
  | _ -> false)
TEST "Turn four sleep works" =
  (match new_state'''.player_one.active_pocamon.status with
  | SSleep x -> x = 0 &&
    (new_state'''.player_two.active_pocamon.health = start_health)
  | _ -> true)
TEST "Turn five sleep works" =
  (match new_state''''.player_one.active_pocamon.status with
  | SSleep x -> false
  | _ -> true)


let rec get_attack_status x =
    match x with
    | Attack_Status a -> a
    | _ -> failwith "Error - wrong type"

let new_state, info = apply_fight_sequence simple_game
  (FMove tackle) (FMove tackle)
let new_state', info' = apply_fight_sequence new_state
  (FMove tackle) (FMove tackle)
TEST "p1 tackle worked" =
  (if (get_attack_status info.p1_move_status).missed then
    new_state.player_two.active_pocamon.health =
    simple_game.player_two.active_pocamon.health
  else
    new_state.player_two.active_pocamon.health <
    simple_game.player_two.active_pocamon.health)
TEST "p2 tackle worked" =
  (if (get_attack_status info.p2_move_status).missed then
    new_state.player_one.active_pocamon.health =
    simple_game.player_one.active_pocamon.health
  else
    new_state.player_one.active_pocamon.health <
    simple_game.player_one.active_pocamon.health)
TEST "p1 tackle 2 worked" =
  (if (get_attack_status info'.p1_move_status).missed then
    new_state'.player_two.active_pocamon.health =
    new_state.player_two.active_pocamon.health
  else
    new_state'.player_two.active_pocamon.health <
    new_state.player_two.active_pocamon.health)
TEST "p2 tackle 2 worked" =
  (if (get_attack_status info'.p2_move_status).missed then
    new_state'.player_one.active_pocamon.health =
    new_state.player_one.active_pocamon.health
  else
    new_state'.player_one.active_pocamon.health <
    new_state.player_one.active_pocamon.health)

let rec fight_x_times x state func =
  if x = 0 then state else
    fight_x_times (x-1) (fst (func state)) func
let stat_change_state =
  {simple_game with player_one=
    {simple_game.player_one with active_pocamon=stat_changer_poca}}

let use_attack_up = fun s -> apply_fight_sequence s
  (FMove attack_up) (FMove dummy_move)
let used_attack_up_once = fight_x_times 1 stat_change_state use_attack_up
let used_attack_up_a_lot = fight_x_times 10 stat_change_state use_attack_up

let use_speed_down = fun s -> apply_fight_sequence s
  (FMove speed_down) (FMove dummy_move)
let used_speed_down_once = fight_x_times 1 stat_change_state use_speed_down
let used_speed_down_a_lot = fight_x_times 10 stat_change_state use_speed_down

TEST "Attack increased by 1" =
  (used_attack_up_once.player_one.active_pocamon.stat_mods.attack = 1)
TEST "Attack increased to a max of 6" =
  (used_attack_up_a_lot.player_one.active_pocamon.stat_mods.attack = 6)
TEST "Speed decreased by 1" =
  (used_speed_down_once.player_two.active_pocamon.stat_mods.speed = -1)
TEST "Speed decreased to a min of -6" =
  (used_speed_down_a_lot.player_two.active_pocamon.stat_mods.speed = -6)


TEST "Test priority hit goes first" = let priority_game =
  {simple_game with player_one= {simple_game.player_one with
                                active_pocamon=priority_poca}} in
  let _, info = apply_fight_sequence priority_game
                (FMove priority_hit) (FMove dummy_move) in
  info.p1_went_first

let health_game = {simple_game with player_one={
  simple_game.player_one with active_pocamon=health_changer}}

let used_recover, _ = apply_fight_sequence health_game
  (FMove recover) (FMove dummy_move)
let used_explode, _ = apply_fight_sequence health_game
  (FMove explode) (FMove dummy_move)
let used_drain, _ = apply_fight_sequence health_game
  (FMove drain) (FMove dummy_move)

TEST "Recover increased health" =
  (used_recover.player_one.active_pocamon.health > 100)
TEST "Explode killed user" = (used_explode.player_one.active_pocamon.health = 0)
TEST "Explode dealt damage" =
  (used_explode.player_two.active_pocamon.health < 200)
TEST "Drain increased health" =
  (used_drain.player_one.active_pocamon.health > 100)
TEST "Drain damaged opponent" =
  (used_drain.player_two.active_pocamon.health < 200)

let charge_game = {simple_game with player_one={
  simple_game.player_one with active_pocamon=health_changer}}

let used_charge, _ = apply_fight_sequence charge_game
    (FMove charge_hit) (FMove dummy_move)
let charge_finished, _ = apply_fight_sequence used_charge
    (FMove dummy_move) (FMove dummy_move)

let used_charge_no_hit, info = apply_fight_sequence charge_game
    (FMove charge_no_hit) (FMove dummy_move)
let charge_no_hit_finished, _ = apply_fight_sequence used_charge_no_hit
    (FMove dummy_move) (FMove dummy_move)

TEST "charging field populated" =
  (used_charge.player_one.active_pocamon.charging <> None)
TEST "Attack_immunity false" =
  (not used_charge.player_one.active_pocamon.attack_immunity)
TEST "Health unchanged" =
  (used_charge.player_two.active_pocamon.health = 200)
TEST "charge off" =
  (charge_finished.player_one.active_pocamon.charging = None)
TEST "health down" =
  (charge_finished.player_two.active_pocamon.health < 200)

TEST "charging field populated" =
  (used_charge_no_hit.player_one.active_pocamon.charging <> None)
TEST "attack immunity true" =
  (used_charge_no_hit.player_one.active_pocamon.attack_immunity)
TEST "health unchanged" =
  (used_charge_no_hit.player_two.active_pocamon.health = 200)
TEST "Charge off" =
  (charge_no_hit_finished.player_one.active_pocamon.charging = None)
TEST "attack_immunity off" =
  (not charge_no_hit_finished.player_one.active_pocamon.attack_immunity)
TEST "health down" =
  (charge_no_hit_finished.player_two.active_pocamon.health < 200)
TEST "attack missed" = ((get_attack_status info.p2_move_status).missed)
(******************************************************************************)
(** Unit tests for AI *******************************************************)
(******************************************************************************)
open Ai
open PocaDex
open Types
open Fight


let () = Pa_ounit_lib.Runtime.summarize()
