open Assertions
open PocaDex
open Types

let moves = [ "CONVERSION2"; "GROWL"; "SELFDESTRUCT"; "SKULL BASH"; "SPITE"; "LOCK ON"; "PSYCHIC"; "RAZOR LEAF"; "TOXIC"; "SWORDS DANCE"; "DOUBLE TEAM"; "HYPER BEAM"; "TAKE DOWN"; "PECK"; "POISON STING"; "ROLLING KICK"; "SUPERSONIC"; "STRENGTH"; "CONFUSE RAY"; "ROAR"; "GUST"; "SUNNY DAY"; "SOFTBOILED"; "PAY DAY"; "ROLLOUT"; "LOVELY KISS"; "ABSORB"; "HYPER FANG"; "DRILL PECK"; "HAZE"; "BUBBLEBEAM"; "MIND READER"; "DYNAMICPUNCH"; "ICE PUNCH"; "BODY SLAM"; "HYDRO PUMP"; "SLUDGE BOMB"; "LEECH SEED"; "FURY ATTACK"; "SLASH"; "GUILLOTINE"; "ICY WIND"; "TWISTER"; "POISON GAS"; "SUBSTITUTE"; "DIZZY PUNCH"; "SHADOW BALL"; "HORN ATTACK"; "BUBBLE"; "SEISMIC TOSS"; "TRI ATTACK"; "EXTREMESPEED"; "MEGA PUNCH"; "PIN MISSILE"; "DRAGON RAGE"; "ENDURE"; "SUPER FANG"; "THUNDERPUNCH"; "FLY"; "MIRROR MOVE"; "RETURN"; "ICE BEAM"; "THUNDER WAVE"; "NIGHTMARE"; "FLASH"; "DREAM EATER"; "TACKLE"; "DISABLE"; "VINE WHIP"; "EARTHQUAKE"; "WHIRLWIND"; "REFLECT"; "THUNDERBOLT"; "BARRIER"; "RAGE"; "FOCUS ENERGY"; "FURY SWIPES"; "SPORE"; "HEADBUTT"; "FIRE PUNCH"; "SOLARBEAM"; "RAIN DANCE"; "HI JUMP KICK"; "SWIFT"; "ENCORE"; "FLAIL"; "SWEET SCENT"; "MEAN LOOK"; "EMBER"; "HORN DRILL"; "BONE CLUB"; "DOUBLESLAP"; "AMNESIA"; "FRUSTRATION"; "OUTRAGE"; "GLARE"; "SHARPEN"; "MIST"; "TELEPORT"; "VICEGRIP"; "FLAME WHEEL"; "ROCK THROW"; "PERISH SONG"; "CONFUSION"; "ZAP CANNON"; "NIGHT SHADE"; "MAGNITUDE"; "FLAMETHROWER"; "WATER GUN"; "RECOVER"; "STOMP"; "SLEEP POWDER"; "SURF"; "DEFENSE CURL"; "ROCK SMASH"; "THUNDER"; "PETAL DANCE"; "MEGA KICK"; "MOONLIGHT"; "MEDITATE"; "GIGA DRAIN"; "KARATE CHOP"; "SLUDGE"; "SNORE"; "LICK"; "ACID"; "STUN SPORE"; "LEECH LIFE"; "AGILITY"; "DRAGONBREATH"; "CROSS CHOP"; "BITE"; "BONE RUSH"; "DESTINY BOND"; "SPLASH"; "FURY CUTTER"; "SYNTHESIS"; "TWINEEDLE"; "PROTECT"; "CUT"; "FISSURE"; "POISONPOWDER"; "SCREECH"; "TRANSFORM"; "ACID ARMOR"; "SLAM"; "COUNTER"; "REVERSAL"; "SLEEP TALK"; "VITAL THROW"; "CONSTRICT"; "ANCIENTPOWER"; "WHIRLPOOL"; "CLAMP"; "CONVERSION"; "KINESIS"; "ATTRACT"; "TAIL WHIP"; "CRABHAMMER"; "BATON PASS"; "LIGHT SCREEN"; "SCRATCH"; "RAPID SPIN"; "SAFEGUARD"; "JUMP KICK"; "FIRE BLAST"; "QUICK ATTACK"; "DIG"; "DOUBLE KICK"; "PSYBEAM"; "WING ATTACK"; "MACH PUNCH"; "THUNDERSHOCK"; "WRAP"; "SING"; "SWAGGER"; "DOUBLE EDGE"; "BLIZZARD"; "SUBMISSION"; "HYPNOSIS"; "HARDEN"; "SPIKES"; "BARRAGE"; "SMOKESCREEN"; "SMOG"; "MEGA DRAIN"; "FUTURE SIGHT"; "PURSUIT"; "STRING SHOT"; "SONICBOOM"; "METRONOME"; "PSYCH UP"; "FALSE SWIPE"; "POWDER SNOW"; "SCARY FACE"; "REST"; "FORESIGHT"; "LOW KICK"; "DETECT"; "BONEMERANG"; "EXPLOSION"; "SKY ATTACK"; "SPIKE CANNON"; "SANDSTORM"; "AURORA BEAM"; "POUND"; "LEER"; "BIND"; "HIDDEN POWER"; "MUD SLAP"; "SAND ATTACK"; "EGG BOMB"; "WATERFALL"; "MINIMIZE"; "GROWTH"; "FIRE SPIN"; "WITHDRAW"; "THRASH"; "MIRROR COAT"; ]


TEST_UNIT "Try to find all moves" =
  let errors = List.fold_left (fun acc m->
    try let _ = (get_move m) in acc
    with err -> (Printexc.to_string err) ^"; "^acc) "" moves in
  if (String.length errors) = 0
  then () else failwith errors

TEST "normal get move name" = (get_move "POUND").name = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.name
TEST "normal get move move_type" = (get_move "POUND").move_type = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.move_type
TEST "normal get move status_effect" = (get_move "POUND").status_effect = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.status_effect
TEST "normal get move status_probability" = (get_move "POUND").status_probability = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.status_probability
TEST "normal get move accuracy" = (get_move "POUND").accuracy = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.accuracy
TEST "normal get move damage" = (get_move "POUND").damage = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.damage
TEST "normal get move max_pp" = (get_move "POUND").max_pp = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.max_pp
TEST "normal get move pp" = (get_move "POUND").pp = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.pp
TEST "normal get move move_category" = (get_move "POUND").move_category = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}.move_category
TEST "normal get move" = (get_move "POUND") = {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial; effect=MNone}

TEST "bad input throws exception" =
  try let _ =  get_move "Not_A_MOve" in false
  with _ -> true

TEST "normal get_pocamon name" = (get_pocamon "RAPIDASH").name = {
  name="RAPIDASH";
  learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"GROWL";"TAIL WHIP";"EMBER";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"FURY ATTACK";"AGILITY";"FIRE BLAST";];
  stats={max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;};
  poca_type=("FIRE", "FIRE");
ascii="   , ??OO==??    7===Z
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
           ~7ZZ O?===??ZZ77??=="}.name

TEST "normal get_pocamon learnable_moves" = (get_pocamon "RAPIDASH").learnable_moves = {
  name="RAPIDASH";
  learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"GROWL";"TAIL WHIP";"EMBER";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"FURY ATTACK";"AGILITY";"FIRE BLAST";];
  stats={max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;};
  poca_type=("FIRE", "FIRE");
ascii="   , ??OO==??    7===Z
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
           ~7ZZ O?===??ZZ77??=="}.learnable_moves

TEST "normal get_pocamon stats" = (get_pocamon "RAPIDASH").stats = {
  name="RAPIDASH";
  learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"GROWL";"TAIL WHIP";"EMBER";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"FURY ATTACK";"AGILITY";"FIRE BLAST";];
  stats={max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;};
  poca_type=("FIRE", "FIRE");
ascii="   , ??OO==??    7===Z
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
           ~7ZZ O?===??ZZ77??=="}.stats

TEST "normal get_pocamon poca_type" = (get_pocamon "RAPIDASH").poca_type = {
  name="RAPIDASH";
  learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"GROWL";"TAIL WHIP";"EMBER";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"FURY ATTACK";"AGILITY";"FIRE BLAST";];
  stats={max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;};
  poca_type=("FIRE", "FIRE");
ascii="   , ??OO==??    7===Z
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
           ~7ZZ O?===??ZZ77??=="}.poca_type

TEST "normal get_pocamon ascii" = (get_pocamon "RAPIDASH").ascii = {
  name="RAPIDASH";
  learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"GROWL";"TAIL WHIP";"EMBER";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"FURY ATTACK";"AGILITY";"FIRE BLAST";];
  stats={max_hp=65; attack=100; defense=70; speed=105; sp_attack=80;sp_defense=80;};
  poca_type=("FIRE", "FIRE");
ascii="   , ??OO==??    7===Z
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
           ~7ZZ O?===??ZZ77??=="}.ascii

TEST_UNIT "get_random_pocamon name" =
  let errors = ref "" in
    for i=0 to 1000 do
       try let _ = get_pocamon (get_random_pocamon ()).name in ()
       with err -> errors := (Printexc.to_string err) ^ !errors
    done;
  if (String.length (!errors)) = 0
  then () else failwith !errors


(*
let sum_stats stats =
  stats.max_hp + stats.attack + stats.defense + stats.speed +
  stats.sp_attack + stats.sp_defense

let base_stats = {max_hp=65; attack=100; defense=70; speed=105;
          sp_attack=80;sp_defense=80;}
TEST "get_random_pocamon stats" = sum_stats (get_random_pocamon () ).stats =
(sum_stats (get_pocamon (get_random_pocamon ()).name).stats) + 500
*)



let () = Pa_ounit_lib.Runtime.summarize()
