open Types
module MoveDex = Map.Make(String)
let movedex = MoveDex.empty
let movedex = MoveDex.add "POUND" {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "KARATE CHOP" {name="KARATE CHOP"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=50; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLESLAP" {name="DOUBLESLAP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "COMET PUNCH" {name="COMET PUNCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=18; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA PUNCH" {name="MEGA PUNCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=80; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PAY DAY" {name="PAY DAY"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FIRE PUNCH" {name="FIRE PUNCH"; move_type=TFire; status_effect=MBurn; status_probability=10; accuracy=100; damage=75; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "ICE PUNCH" {name="ICE PUNCH"; move_type=TIce; status_effect=MFreeze; status_probability=10; accuracy=100; damage=75; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDERPUNCH" {name="THUNDERPUNCH"; move_type=TElectric; status_effect=MParalyze; status_probability=10; accuracy=100; damage=75; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SCRATCH" {name="SCRATCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "VICEGRIP" {name="VICEGRIP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=55; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "GUILLOTINE" {name="GUILLOTINE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=30; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAZOR WIND" {name="RAZOR WIND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=80; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWORDS DANCE" {name="SWORDS DANCE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "CUT" {name="CUT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=95; damage=50; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "GUST" {name="GUST"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "WING ATTACK" {name="WING ATTACK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "WHIRLWIND" {name="WHIRLWIND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLY" {name="FLY"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=95; damage=70; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "BIND" {name="BIND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=15; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLAM" {name="SLAM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=80; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "VINE WHIP" {name="VINE WHIP"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=35; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "STOMP" {name="STOMP"; move_type=TNormal; status_effect=MNormal; status_probability=30; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLE KICK" {name="DOUBLE KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=30; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA KICK" {name="MEGA KICK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=120; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "JUMP KICK" {name="JUMP KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=95; damage=70; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROLLING KICK" {name="ROLLING KICK"; move_type=TFighting; status_effect=MNormal; status_probability=30; accuracy=85; damage=60; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SAND ATTACK" {name="SAND ATTACK"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "HEADBUTT" {name="HEADBUTT"; move_type=TNormal; status_effect=MNormal; status_probability=30; accuracy=100; damage=70; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "HORN ATTACK" {name="HORN ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=65; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY ATTACK" {name="FURY ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HORN DRILL" {name="HORN DRILL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=30; damage=1; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "TACKLE" {name="TACKLE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=95; damage=35; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "BODY SLAM" {name="BODY SLAM"; move_type=TNormal; status_effect=MParalyze; status_probability=30; accuracy=100; damage=85; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "WRAP" {name="WRAP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "TAKE DOWN" {name="TAKE DOWN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=90; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "THRASH" {name="THRASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=90; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLE EDGE" {name="DOUBLE EDGE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=120; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "TAIL WHIP" {name="TAIL WHIP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "POISON STING" {name="POISON STING"; move_type=TPoison; status_effect=MPoison; status_probability=30; accuracy=100; damage=15; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "TWINEEDLE" {name="TWINEEDLE"; move_type=TBug; status_effect=MNormal; status_probability=20; accuracy=100; damage=25; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PIN MISSILE" {name="PIN MISSILE"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=85; damage=14; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "LEER" {name="LEER"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "BITE" {name="BITE"; move_type=TNormal; status_effect=MNormal; status_probability=30; accuracy=100; damage=60; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "GROWL" {name="GROWL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROAR" {name="ROAR"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SING" {name="SING"; move_type=TNormal; status_effect=MSleep; status_probability=100; accuracy=55; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUPERSONIC" {name="SUPERSONIC"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=55; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SONICBOOM" {name="SONICBOOM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=20; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "DISABLE" {name="DISABLE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=55; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "ACID" {name="ACID"; move_type=TPoison; status_effect=MNormal; status_probability=10; accuracy=100; damage=40; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "EMBER" {name="EMBER"; move_type=TFire; status_effect=MBurn; status_probability=10; accuracy=100; damage=40; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLAMETHROWER" {name="FLAMETHROWER"; move_type=TFire; status_effect=MBurn; status_probability=10; accuracy=100; damage=95; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "MIST" {name="MIST"; move_type=TIce; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "WATER GUN" {name="WATER GUN"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYDRO PUMP" {name="HYDRO PUMP"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=80; damage=120; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SURF" {name="SURF"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=95; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "ICE BEAM" {name="ICE BEAM"; move_type=TIce; status_effect=MFreeze; status_probability=10; accuracy=100; damage=95; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "BLIZZARD" {name="BLIZZARD"; move_type=TIce; status_effect=MFreeze; status_probability=10; accuracy=70; damage=120; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "PSYBEAM" {name="PSYBEAM"; move_type=TPsychic; status_effect=MNormal; status_probability=10; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "BUBBLEBEAM" {name="BUBBLEBEAM"; move_type=TWater; status_effect=MNormal; status_probability=10; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "AURORA BEAM" {name="AURORA BEAM"; move_type=TIce; status_effect=MNormal; status_probability=10; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYPER BEAM" {name="HYPER BEAM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=150; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "PECK" {name="PECK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=35; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "DRILL PECK" {name="DRILL PECK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUBMISSION" {name="SUBMISSION"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=80; damage=80; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "LOW KICK" {name="LOW KICK"; move_type=TFighting; status_effect=MNormal; status_probability=30; accuracy=90; damage=50; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "COUNTER" {name="COUNTER"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SEISMIC TOSS" {name="SEISMIC TOSS"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "STRENGTH" {name="STRENGTH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "ABSORB" {name="ABSORB"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA DRAIN" {name="MEGA DRAIN"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "LEECH SEED" {name="LEECH SEED"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=90; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "GROWTH" {name="GROWTH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAZOR LEAF" {name="RAZOR LEAF"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=95; damage=55; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "SOLARBEAM" {name="SOLARBEAM"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=120; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "POISONPOWDER" {name="POISONPOWDER"; move_type=TPoison; status_effect=MPoison; status_probability=100; accuracy=75; damage=0; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "STUN SPORE" {name="STUN SPORE"; move_type=TGrass; status_effect=MParalyze; status_probability=100; accuracy=75; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLEEP POWDER" {name="SLEEP POWDER"; move_type=TGrass; status_effect=MSleep; status_probability=100; accuracy=75; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "PETAL DANCE" {name="PETAL DANCE"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=70; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "STRING SHOT" {name="STRING SHOT"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=95; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "DRAGON RAGE" {name="DRAGON RAGE"; move_type=TDragon; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "FIRE SPIN" {name="FIRE SPIN"; move_type=TFire; status_effect=MNormal; status_probability=0; accuracy=70; damage=15; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDERSHOCK" {name="THUNDERSHOCK"; move_type=TElectric; status_effect=MParalyze; status_probability=10; accuracy=100; damage=40; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDERBOLT" {name="THUNDERBOLT"; move_type=TElectric; status_effect=MParalyze; status_probability=10; accuracy=100; damage=95; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDER WAVE" {name="THUNDER WAVE"; move_type=TElectric; status_effect=MParalyze; status_probability=100; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDER" {name="THUNDER"; move_type=TElectric; status_effect=MNormal; status_probability=30; accuracy=70; damage=120; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROCK THROW" {name="ROCK THROW"; move_type=TRock; status_effect=MNormal; status_probability=0; accuracy=90; damage=50; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "EARTHQUAKE" {name="EARTHQUAKE"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=100; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "FISSURE" {name="FISSURE"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=30; damage=1; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "DIG" {name="DIG"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "TOXIC" {name="TOXIC"; move_type=TPoison; status_effect=MPoison; status_probability=100; accuracy=85; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONFUSION" {name="CONFUSION"; move_type=TPsychic; status_effect=MNormal; status_probability=10; accuracy=100; damage=50; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "PSYCHIC" {name="PSYCHIC"; move_type=TPsychic; status_effect=MNormal; status_probability=10; accuracy=100; damage=90; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYPNOSIS" {name="HYPNOSIS"; move_type=TPsychic; status_effect=MSleep; status_probability=100; accuracy=60; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEDITATE" {name="MEDITATE"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "AGILITY" {name="AGILITY"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "QUICK ATTACK" {name="QUICK ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAGE" {name="RAGE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "TELEPORT" {name="TELEPORT"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "NIGHT SHADE" {name="NIGHT SHADE"; move_type=TGhost; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "MIMIC" {name="MIMIC"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SCREECH" {name="SCREECH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLE TEAM" {name="DOUBLE TEAM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "RECOVER" {name="RECOVER"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HARDEN" {name="HARDEN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "MINIMIZE" {name="MINIMIZE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SMOKESCREEN" {name="SMOKESCREEN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONFUSE RAY" {name="CONFUSE RAY"; move_type=TGhost; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "WITHDRAW" {name="WITHDRAW"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "DEFENSE CURL" {name="DEFENSE CURL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "BARRIER" {name="BARRIER"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "LIGHT SCREEN" {name="LIGHT SCREEN"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "HAZE" {name="HAZE"; move_type=TIce; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "REFLECT" {name="REFLECT"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FOCUS ENERGY" {name="FOCUS ENERGY"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "BIDE" {name="BIDE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "METRONOME" {name="METRONOME"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MIRROR MOVE" {name="MIRROR MOVE"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SELFDESTRUCT" {name="SELFDESTRUCT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=200; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "EGG BOMB" {name="EGG BOMB"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=100; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "LICK" {name="LICK"; move_type=TGhost; status_effect=MParalyze; status_probability=30; accuracy=100; damage=20; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SMOG" {name="SMOG"; move_type=TPoison; status_effect=MPoison; status_probability=40; accuracy=70; damage=20; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLUDGE" {name="SLUDGE"; move_type=TPoison; status_effect=MPoison; status_probability=30; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "BONE CLUB" {name="BONE CLUB"; move_type=TGround; status_effect=MNormal; status_probability=10; accuracy=85; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FIRE BLAST" {name="FIRE BLAST"; move_type=TFire; status_effect=MBurn; status_probability=10; accuracy=85; damage=120; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "WATERFALL" {name="WATERFALL"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "CLAMP" {name="CLAMP"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=75; damage=35; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWIFT" {name="SWIFT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SKULL BASH" {name="SKULL BASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=100; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPIKE CANNON" {name="SPIKE CANNON"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONSTRICT" {name="CONSTRICT"; move_type=TNormal; status_effect=MNormal; status_probability=10; accuracy=100; damage=10; max_pp=35; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "AMNESIA" {name="AMNESIA"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "KINESIS" {name="KINESIS"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=80; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SOFTBOILED" {name="SOFTBOILED"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "HI JUMP KICK" {name="HI JUMP KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=90; damage=85; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "GLARE" {name="GLARE"; move_type=TNormal; status_effect=MParalyze; status_probability=0; accuracy=75; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "DREAM EATER" {name="DREAM EATER"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=100; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "POISON GAS" {name="POISON GAS"; move_type=TPoison; status_effect=MPoison; status_probability=100; accuracy=55; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "BARRAGE" {name="BARRAGE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "LEECH LIFE" {name="LEECH LIFE"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "LOVELY KISS" {name="LOVELY KISS"; move_type=TNormal; status_effect=MSleep; status_probability=0; accuracy=75; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SKY ATTACK" {name="SKY ATTACK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=90; damage=140; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "TRANSFORM" {name="TRANSFORM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "BUBBLE" {name="BUBBLE"; move_type=TWater; status_effect=MNormal; status_probability=10; accuracy=100; damage=20; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "DIZZY PUNCH" {name="DIZZY PUNCH"; move_type=TNormal; status_effect=MNormal; status_probability=20; accuracy=100; damage=70; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPORE" {name="SPORE"; move_type=TGrass; status_effect=MSleep; status_probability=0; accuracy=100; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLASH" {name="FLASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=70; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PSYWAVE" {name="PSYWAVE"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=80; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPLASH" {name="SPLASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "ACID ARMOR" {name="ACID ARMOR"; move_type=TPoison; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "CRABHAMMER" {name="CRABHAMMER"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=85; damage=90; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "EXPLOSION" {name="EXPLOSION"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=250; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY SWIPES" {name="FURY SWIPES"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=80; damage=18; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "BONEMERANG" {name="BONEMERANG"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=90; damage=50; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "REST" {name="REST"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROCK SLIDE" {name="ROCK SLIDE"; move_type=TRock; status_effect=MNormal; status_probability=30; accuracy=90; damage=75; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYPER FANG" {name="HYPER FANG"; move_type=TNormal; status_effect=MNormal; status_probability=10; accuracy=90; damage=80; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SHARPEN" {name="SHARPEN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONVERSION" {name="CONVERSION"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "TRI ATTACK" {name="TRI ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=20; accuracy=100; damage=80; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUPER FANG" {name="SUPER FANG"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=1; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLASH" {name="SLASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=70; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUBSTITUTE" {name="SUBSTITUTE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "STRUGGLE" {name="STRUGGLE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=50; max_pp=1; pp=1; move_category=ESpecial} movedex
let movedex = MoveDex.add "SKETCH" {name="SKETCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=1; pp=1; move_category=ESpecial} movedex
let movedex = MoveDex.add "TRIPLE KICK" {name="TRIPLE KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=90; damage=10; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPIDER WEB" {name="SPIDER WEB"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MIND READER" {name="MIND READER"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "NIGHTMARE" {name="NIGHTMARE"; move_type=TGhost; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLAME WHEEL" {name="FLAME WHEEL"; move_type=TFire; status_effect=MNormal; status_probability=10; accuracy=100; damage=60; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "SNORE" {name="SNORE"; move_type=TNormal; status_effect=MNormal; status_probability=30; accuracy=100; damage=40; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLAIL" {name="FLAIL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONVERSION2" {name="CONVERSION2"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "AEROBLAST" {name="AEROBLAST"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=95; damage=100; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "COTTON SPORE" {name="COTTON SPORE"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=85; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "REVERSAL" {name="REVERSAL"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPITE" {name="SPITE"; move_type=TGhost; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "POWDER SNOW" {name="POWDER SNOW"; move_type=TIce; status_effect=MFreeze; status_probability=10; accuracy=100; damage=40; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "PROTECT" {name="PROTECT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MACH PUNCH" {name="MACH PUNCH"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SCARY FACE" {name="SCARY FACE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWEET KISS" {name="SWEET KISS"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "BELLY DRUM" {name="BELLY DRUM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLUDGE BOMB" {name="SLUDGE BOMB"; move_type=TPoison; status_effect=MPoison; status_probability=30; accuracy=100; damage=90; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MUD SLAP" {name="MUD SLAP"; move_type=TGround; status_effect=MNormal; status_probability=100; accuracy=100; damage=20; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "OCTAZOOKA" {name="OCTAZOOKA"; move_type=TWater; status_effect=MNormal; status_probability=50; accuracy=85; damage=65; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPIKES" {name="SPIKES"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "ZAP CANNON" {name="ZAP CANNON"; move_type=TElectric; status_effect=MParalyze; status_probability=100; accuracy=50; damage=100; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "FORESIGHT" {name="FORESIGHT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "DESTINY BOND" {name="DESTINY BOND"; move_type=TGhost; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "PERISH SONG" {name="PERISH SONG"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "ICY WIND" {name="ICY WIND"; move_type=TIce; status_effect=MNormal; status_probability=100; accuracy=95; damage=55; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "DETECT" {name="DETECT"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "BONE RUSH" {name="BONE RUSH"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=80; damage=25; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "LOCK ON" {name="LOCK ON"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "OUTRAGE" {name="OUTRAGE"; move_type=TDragon; status_effect=MNormal; status_probability=0; accuracy=100; damage=90; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SANDSTORM" {name="SANDSTORM"; move_type=TRock; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "GIGA DRAIN" {name="GIGA DRAIN"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "ENDURE" {name="ENDURE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "CHARM" {name="CHARM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROLLOUT" {name="ROLLOUT"; move_type=TRock; status_effect=MNormal; status_probability=0; accuracy=90; damage=30; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FALSE SWIPE" {name="FALSE SWIPE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWAGGER" {name="SWAGGER"; move_type=TNormal; status_effect=MNormal; status_probability=100; accuracy=90; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "MILK DRINK" {name="MILK DRINK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPARK" {name="SPARK"; move_type=TElectric; status_effect=MParalyze; status_probability=30; accuracy=100; damage=65; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY CUTTER" {name="FURY CUTTER"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=95; damage=10; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEAN LOOK" {name="MEAN LOOK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "ATTRACT" {name="ATTRACT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLEEP TALK" {name="SLEEP TALK"; move_type=TNormal; status_effect=MSleep; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "HEAL BELL" {name="HEAL BELL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "RETURN" {name="RETURN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PRESENT" {name="PRESENT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FRUSTRATION" {name="FRUSTRATION"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SAFEGUARD" {name="SAFEGUARD"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=25; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "PAIN SPLIT" {name="PAIN SPLIT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SACRED FIRE" {name="SACRED FIRE"; move_type=TFire; status_effect=MNormal; status_probability=50; accuracy=95; damage=100; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "MAGNITUDE" {name="MAGNITUDE"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=30; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "DYNAMICPUNCH" {name="DYNAMICPUNCH"; move_type=TFighting; status_effect=MNormal; status_probability=100; accuracy=50; damage=100; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGAHORN" {name="MEGAHORN"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=85; damage=120; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "DRAGONBREATH" {name="DRAGONBREATH"; move_type=TDragon; status_effect=MParalyze; status_probability=30; accuracy=100; damage=60; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "BATON PASS" {name="BATON PASS"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "ENCORE" {name="ENCORE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "PURSUIT" {name="PURSUIT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAPID SPIN" {name="RAPID SPIN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=40; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWEET SCENT" {name="SWEET SCENT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "VITAL THROW" {name="VITAL THROW"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=70; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MORNING SUN" {name="MORNING SUN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SYNTHESIS" {name="SYNTHESIS"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "MOONLIGHT" {name="MOONLIGHT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "HIDDEN POWER" {name="HIDDEN POWER"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "CROSS CHOP" {name="CROSS CHOP"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=80; damage=100; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "TWISTER" {name="TWISTER"; move_type=TDragon; status_effect=MNormal; status_probability=20; accuracy=100; damage=40; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAIN DANCE" {name="RAIN DANCE"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=90; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUNNY DAY" {name="SUNNY DAY"; move_type=TFire; status_effect=MNormal; status_probability=0; accuracy=90; damage=0; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "MIRROR COAT" {name="MIRROR COAT"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=1; max_pp=20; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PSYCH UP" {name="PSYCH UP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "EXTREMESPEED" {name="EXTREMESPEED"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "ANCIENTPOWER" {name="ANCIENTPOWER"; move_type=TRock; status_effect=MNormal; status_probability=10; accuracy=100; damage=60; max_pp=5; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SHADOW BALL" {name="SHADOW BALL"; move_type=TGhost; status_effect=MNormal; status_probability=20; accuracy=100; damage=80; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FUTURE SIGHT" {name="FUTURE SIGHT"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=90; damage=80; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROCK SMASH" {name="ROCK SMASH"; move_type=TFighting; status_effect=MNormal; status_probability=50; accuracy=100; damage=20; max_pp=15; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "WHIRLPOOL" {name="WHIRLPOOL"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=70; damage=15; max_pp=15; pp=15; move_category=ESpecial} movedex

module PokeDex = Map.Make(String)
let dexmap = PokeDex.empty
let dexmap = PokeDex.add "ELECTABUZZ" {
name="ELECTABUZZ";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLASH";"THUNDERBOLT";"LEER";"THUNDERPUNCH";"THUNDERPUNCH";"LIGHT SCREEN";"SWIFT";"SCREECH";"THUNDERBOLT";"THUNDER";];
stats={max_hp=65; attack=83; defense=57; speed=105; sp_attack=95;sp_defense=85;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="   N====   8N =N     N78=7
   ===7N == ?7=  =N   ==77
   NOO77   N=N=8N    N=DDN
    8ODD 8=$,OO===7  ==77
     OO77N=8O=D=87777O77
      N NDONNN??N7DN
           ===7N7=78
          NOODDO7O77
         N7==OOO=8DDN     77
          77DO77D777    D7D
        87D7777777OON N7N
        N7O    DD7D77D88
      88==7N      77==8,8
     N$ 8N        N77~7 $8
                 N777N,8=8     "} dexmap

let dexmap = PokeDex.add "STARMIE" {
name="STARMIE";
learnable_moves=["TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"SURF";"FLASH";"WHIRLPOOL";"WATERFALL";"THUNDERBOLT";"ICE BEAM";"RAPID SPIN";"RECOVER";"BUBBLEBEAM";"CONFUSE RAY";];
stats={max_hp=60; attack=75; defense=85; speed=115; sp_attack=100;sp_defense=85;};
poca_type=("WATER", "PSYCHIC");
ascii="              :?
        $O   ::?   O?$
        $O??O:$??$??$$
        O$$O=+7?? $$$
     O:::O: +:77 O+ ===$?
       ??OO:O??O$7 ?O??
        ?O$$:$??O$$O?
        :+$:O?OO O+++$
      O?==$7$$$O$$$$ $$
      =O$=:7$$$$$7 $$$$?O
        O= O$7+ $$ ?$ O$$
        ==$$O? $ $$O?
        $$   O?$    $$

                               "} dexmap

let dexmap = PokeDex.add "DODRIO" {
name="DODRIO";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"FLY";"GROWL";"PURSUIT";"FURY ATTACK";"PURSUIT";"FURY ATTACK";"TRI ATTACK";"RAGE";"DRILL PECK";"AGILITY";];
stats={max_hp=60; attack=110; defense=70; speed=100; sp_attack=60;sp_defense=60;};
poca_type=("NORMAL", "FLYING");
ascii="          8?? ??7    OI  OII
           : 7 ?7       O
           Z::77   ?:Z8?78
         Z:         77???7
   OI  I      O      77778
    O?O       OO87 8
   ?? ???   O ?O??OOO
   ???? 7   ?7???? ?77
    7:Z7    7?????7?77
     :        77I77 7==$
    Z:          IIIO =$==,,
              Z?  O  =$,,,
           ZZ?     ?
         :?:?O    :
                 ZZ            "} dexmap

let dexmap = PokeDex.add "SLOWPOKE" {
name="SLOWPOKE";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"SURF";"STRENGTH";"FLASH";"FLAMETHROWER";"ICE BEAM";];
stats={max_hp=90; attack=65; defense=65; speed=15; sp_attack=40;sp_defense=40;};
poca_type=("WATER", "PSYCHIC");
ascii="

                ~=====$
                  N=====$
                     ====$
                     ?????
      ?=O ?O=$=====$??????
      ??~~~==?O?O====????N
      ? ===  ??N=====?O?N
      :::::Z ??????????
     N~+NZ++++?????O???N
    :=?+==?$ ==???? :??
        ~~++N???NN

                               "} dexmap

let dexmap = PokeDex.add "BULBASAUR" {
name="BULBASAUR";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FLASH";"TACKLE";"GROWL";"LEECH SEED";"VINE WHIP";"POISONPOWDER";"SLEEP POWDER";"RAZOR LEAF";"SWEET SCENT";"GROWTH";"SYNTHESIS";"SOLARBEAM";];
stats={max_hp=45; attack=49; defense=49; speed=45; sp_attack=65;sp_defense=65;};
poca_type=("GRASS", "POISON");
ascii="

                  O
             ====7?O
        ===77+=+==?77
        =====Z~+7?77ON
       Z +==+ ?~777O7
       88+++++8NZ787N
         N7777N7Z7787
          777N777N787
          NN 888



                               "} dexmap

let dexmap = PokeDex.add "SANDSLASH" {
name="SANDSLASH";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"SWIFT";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"FURY CUTTER";"CUT";"STRENGTH";"DEFENSE CURL";"SAND ATTACK";"DEFENSE CURL";"SAND ATTACK";"POISON STING";"SLASH";"SWIFT";"FURY SWIPES";"SANDSTORM";];
stats={max_hp=75; attack=100; defense=110; speed=65; sp_attack=45;sp_defense=55;};
poca_type=("GROUND", "GROUND");
ascii="             8  88
            877878ZZN
          7N8ZZZZ7NZZ
       8 7+778+NZZZZZ88
     NN I++78++Z88ZZZZN
      Z8++++ZINZZZNZZ8N
       I+++NZN~~INZZ8ZZN
     ++II+~Z~~Z++NI++IIZ
    N+ I  +~~N II~+++IIII8
     Z~   +IZ  I~~IIII8
       N  88II     N8I
        8I~8N      IZZI
                    ~N

                               "} dexmap

let dexmap = PokeDex.add "DRATINI" {
name="DRATINI";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DETECT";"REST";"ATTRACT";"SURF";"WATERFALL";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"WRAP";"LEER";"THUNDER WAVE";"TWISTER";"DRAGON RAGE";"SLAM";"AGILITY";"SAFEGUARD";"OUTRAGE";"HYPER BEAM";];
stats={max_hp=41; attack=64; defense=45; speed=50; sp_attack=50;sp_defense=50;};
poca_type=("DRAGON", "DRAGON");
ascii="
                  ?
                  Z
            Z :=O : Z
            7 :  O?:Z
             =  ==?O
               :77???
                 : :?
        =            O
        =?7??77??O   ?
         ?77OO77?:   7
                :::::
                 O

                               "} dexmap

let dexmap = PokeDex.add "POLIWAG" {
name="POLIWAG";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"BUBBLE";"HYPNOSIS";"WATER GUN";"DOUBLESLAP";"RAIN DANCE";"BODY SLAM";"HYDRO PUMP";];
stats={max_hp=40; attack=50; defense=40; speed=90; sp_attack=40;sp_defense=40;};
poca_type=("WATER", "WATER");
ascii="



          Z==IOI
        O NIINN IO
        IIIN7IIIII      $$
        II OO N~I7N   ~    N
        Z~~N~ ~NZZN    Z
        NZ$~N=~~ZZNOZO~~ ~
          NNZZZNN
         ZZ     IZ


                               "} dexmap

let dexmap = PokeDex.add "SPEAROW" {
name="SPEAROW";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"PECK";"GROWL";"LEER";"FURY ATTACK";"PURSUIT";"MIRROR MOVE";"DRILL PECK";"AGILITY";];
stats={max_hp=40; attack=60; defense=30; speed=70; sp_attack=31;sp_defense=31;};
poca_type=("NORMAL", "FLYING");
ascii="

           Z7+
          +++7777
          $,$7Z  $==,
          ZIIZZ III,$
         O OZZZ$IIIIOZZ
          $77Z7 $$$ 7O
            77OO77O7+
            7  7
           = O  =O



                               "} dexmap

let dexmap = PokeDex.add "IVYSAUR" {
name="IVYSAUR";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FLASH";"TACKLE";"GROWL";"LEECH SEED";"GROWL";"LEECH SEED";"VINE WHIP";"POISONPOWDER";"SLEEP POWDER";"RAZOR LEAF";"SWEET SCENT";"GROWTH";"SYNTHESIS";"SOLARBEAM";];
stats={max_hp=60; attack=62; defense=63; speed=60; sp_attack=80;sp_defense=80;};
poca_type=("GRASS", "POISON");
ascii="
             O7O+~
             ~~~ON+N
            O++++O77
    Z?Z  ?8Z?7777777O
    87??Z8ZZZZZN8O77 N77?7?8
     ZZ8Z88Z88Z8ZZ88ZZ?????N
       Z+~8+~+8++NZZZ78??N
        ~~$~~++NNNZNN$8
       8~+$++8++$$$$8++8
       +$+++7 $++$$$$$+8
      $+888$$ 8$8$+$+$$$$
     88$$N NNN   N++N NN
                 N N
                               "} dexmap

let dexmap = PokeDex.add "LAPRAS" {
name="LAPRAS";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"SURF";"STRENGTH";"WHIRLPOOL";"THUNDERBOLT";"ICE BEAM";"GROWL";"SING";"MIST";"BODY SLAM";"CONFUSE RAY";"PERISH SONG";"ICE BEAM";"RAIN DANCE";"SAFEGUARD";"HYDRO PUMP";];
stats={max_hp=130; attack=85; defense=80; speed=60; sp_attack=85;sp_defense=95;};
poca_type=("WATER", "ICE");
ascii="      ?7==???777
      7??= 77
     8??? 8777
      8777 ==
          ==7
         ==?7  ?
         ==77 ?~?? Z?
        ===78~~~~  ~?Z
        ===7777~~~~ ~~,~?
        ::=77777~?~Z?????
       ::::78777?????~Z?Z?8
       :::::77777 ?~ 77 777 ??
      = :::::????7??78777777777
    8???::::::777?==???7 ===  7
     7=    ========?77777777   "} dexmap

let dexmap = PokeDex.add "GYARADOS" {
name="GYARADOS";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"BITE";"DRAGON RAGE";"LEER";"TWISTER";"HYDRO PUMP";"RAIN DANCE";"HYPER BEAM";];
stats={max_hp=95; attack=125; defense=79; speed=81; sp_attack=60;sp_defense=100;};
poca_type=("WATER", "FLYING");
ascii="       7,,+++::+:+::N    Z,ZO7O
      ..,,,+Z:+77+77N     OOZZ
 .N ,NNN,O+++N++++777       ZZZ
  7..7,7Z7++7+N8+N7++  ..N,,N77
  7.7,,Z+++N+7 ++++7N  .,N,,77+
    7.,+++7++N 8O+++77.,7, ,777
    7O7~+O77Z +7,N++7ON,,O~~++7
   ~7N~+7N77O+7,7++N7+7N++O+:7N
NO N7ZNZ7+++7Z,..7+++7++N+7O7+
 NZ777ZNZ++N7,,,,N++O+77777NN
,N7OZZ+O+++77   .N 8++N++N
N,787+::+++7N7       7.7
   8.888NN+Z7 7     7...7    7
    N+887I7+  NN     7..,   7,N
    ZZN7III+  ~      7...7 7,,N"} dexmap

let dexmap = PokeDex.add "FEAROW" {
name="FEAROW";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"GROWL";"LEER";"FURY ATTACK";"LEER";"FURY ATTACK";"PURSUIT";"MIRROR MOVE";"DRILL PECK";"AGILITY";];
stats={max_hp=65; attack=90; defense=65; speed=100; sp_attack=61;sp_defense=61;};
poca_type=("NORMAL", "FLYING");
ascii="      ?8?????:     Z?$88$Z$?
      8787???Z     ?$$$$$$8Z?Z
    877878Z??8    $Z$$$ $$$8Z
     777Z Z??::8 Z8$$$$8$$$?8Z
   87 Z$8?????:8 :Z$$$8$$$?? :8
 8+++Z$$ZZZ ??Z:::$$$Z888ZZZ::8
+888    :: ZZ: :?8$$$8Z   8:::8
          :ZZZ Z8Z$$8Z$???Z:::Z
          $$Z$ZZZ$8$$Z??8Z?:::Z
          $$$$ZZZZ $ ??::8:::$$
          888Z ZZZZ  8:::8?:?Z?
       :Z  88ZZZ8ZZ  ?:?:8???Z?
         8+8Z  88 ZZZ8???Z???Z?
          :   ++    8Z$$8Z??$$?
               +    ZZ$??$??Z??"} dexmap

let dexmap = PokeDex.add "SHELLDER" {
name="SHELLDER";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"ICE BEAM";"TACKLE";"WITHDRAW";"SUPERSONIC";"AURORA BEAM";"PROTECT";"LEER";"CLAMP";"ICE BEAM";];
stats={max_hp=30; attack=65; defense=100; speed=40; sp_attack=45;sp_defense=25;};
poca_type=("WATER", "WATER");
ascii="


         ,7
          :++:7::++OO,O
         77:+:::7::+++N
        +7+7OO+++++++NN
        N N NN,,7++7+
         OONNN$ NNO7N
         8$$$8NO77+  N
        N$??$++N N



                               "} dexmap

let dexmap = PokeDex.add "OMASTAR" {
name="OMASTAR";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"ICE BEAM";"WITHDRAW";"BITE";"BITE";"WATER GUN";"LEER";"PROTECT";"SPIKE CANNON";"ANCIENTPOWER";"HYDRO PUMP";];
stats={max_hp=70; attack=60; defense=125; speed=55; sp_attack=115;sp_defense=70;};
poca_type=("ROCK", "WATER");
ascii="
               ~  ~
             ,,+ ~+~Z
           ,+~Z~+I++++
           ,,I++~++ZII+
          Z+,~~~Z+III Z
       7  ,~Z~I~++ IZII
     =I IZ~~I I~~ZZZIII
      77 +:Z:+Z :ZIZI IZ
    ZZ  II=Z===ZZ=I  ZI=7
       I===     =====Z
        ZIIII  III IZ
         II      IIZ

                               "} dexmap

let dexmap = PokeDex.add "PERSIAN" {
name="PERSIAN";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"DREAM EATER";"DETECT";"REST";"ATTRACT";"NIGHTMARE";"THUNDERBOLT";"GROWL";"BITE";"BITE";"PAY DAY";"SCREECH";"FURY SWIPES";"SLASH";];
stats={max_hp=65; attack=70; defense=60; speed=115; sp_attack=65;sp_defense=65;};
poca_type=("NORMAL", "NORMAL");
ascii="     NNO   N$IN
     N$N~~~~+I
       ~~8~:N+~N
      +N+~~++7O~~N
      ~N+~~++~OO          O~~~~
       N NN++++O        O~N  NN
          N+++~~~~~~+N O+N  N~~
          ++++~~~~~~~~~+N    +~
          +++++~~~~~~~~~+
           +++++N~+NO~~~+N
           +++++N +++++++
           N+N++   N++N++N
           N+N++   ++N +++
           N~N++  +++  ++N
          N+++O+      +O+      "} dexmap

let dexmap = PokeDex.add "EXEGGUTOR" {
name="EXEGGUTOR";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"STRENGTH";"FLASH";"HYPNOSIS";"CONFUSION";"STOMP";"EGG BOMB";];
stats={max_hp=95; attack=95; defense=85; speed=55; sp_attack=125;sp_defense=65;};
poca_type=("GRASS", "PSYCHIC");
ascii="    O????O N?OO7 ?7    OO
        N??77??7?7  O??N
   O????77O??N7777777????O
      O???7ON777777777N   NNN
   O?NN  ON777777NN77???O
       O++O~~+N7~~~~O  NN7
      ~~~::::~++  ~~++     N
       $$N:  +++~~ONO+
       ONNOO$~+N+++++N
          N$O++$$NNN
           I$I$$88$       OOOO
           III$$$$$8    NN????O
           II8888$$8      NN???
          IN$$$$$8I$8       NN?
          N$$$ N 8I$$         N"} dexmap

let dexmap = PokeDex.add "KRABBY" {
name="KRABBY";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"REST";"ATTRACT";"FURY CUTTER";"CUT";"SURF";"STRENGTH";"WHIRLPOOL";"ICE BEAM";"BUBBLE";"LEER";"VICEGRIP";"HARDEN";"STOMP";"GUILLOTINE";"PROTECT";"CRABHAMMER";];
stats={max_hp=30; attack=105; defense=90; speed=50; sp_attack=25;sp_defense=25;};
poca_type=("WATER", "WATER");
ascii="

         O7
        I++NN      +++O
       7INN        NNIIO
       7777I 7N ONI 8II7
       O8NNO7+II77I7N77N
        :NO  ++7:7777NON
        = =O7IO: O777NN=
      ::  N:::::::OO:N:8=
            N=7===N  :8 ==
                     8:


                               "} dexmap

let dexmap = PokeDex.add "MAGNEMITE" {
name="MAGNEMITE";
learnable_moves=["ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"FLASH";"THUNDERBOLT";"TACKLE";"THUNDERSHOCK";"SUPERSONIC";"SONICBOOM";"THUNDER WAVE";"LOCK ON";"SWIFT";"SCREECH";"ZAP CANNON";];
stats={max_hp=25; attack=35; defense=70; speed=45; sp_attack=95;sp_defense=55;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="



             ON     88
             : :~NON 8Z
           O~   ~+8ON
           N++$++IN
        8ZON+O+++O
         87N ONO




                               "} dexmap

let dexmap = PokeDex.add "KANGASKHAN" {
name="KANGASKHAN";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"THUNDERPUNCH";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"LEER";"BITE";"TAIL WHIP";"MEGA PUNCH";"RAGE";"ENDURE";"DIZZY PUNCH";"REVERSAL";];
stats={max_hp=105; attack=95; defense=80; speed=90; sp_attack=40;sp_defense=80;};
poca_type=("NORMAL", "NORMAL");
ascii="      ~???II$I::I~
      $??II$$8~I~8
      III$N IIII8I+8
      ++++++8I88+=II+N
     8=NNOO8IIIIIIIIII8
   8+IIII++N~~:IIIII88I8   +
   I++II~:8I::::8+++++II  8+N
  I++IN ~IINI::: $NIIII  ++++
 IIIII 8:IIIII::N I ~N8II++II
 IIIIN 8::~~~::~~~NI8I8IIIIIN
$N~NNN++:::::::~~~I++++IIIII
    8I++N~~:~~~~~8I++++IIII
    N8II8II888~~~~++IIII8N
     NIIIIN  N8~~~IIIIII
    $ $NN~N         ~  8~~  $$8"} dexmap

let dexmap = PokeDex.add "RHYDON" {
name="RHYDON";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"THUNDERPUNCH";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"TAIL WHIP";"STOMP";"FURY ATTACK";"STOMP";"FURY ATTACK";"SCARY FACE";"HORN DRILL";"TAKE DOWN";"EARTHQUAKE";];
stats={max_hp=105; attack=130; defense=120; speed=40; sp_attack=45;sp_defense=45;};
poca_type=("GROUND", "ROCK");
ascii="      IIZZZZI
    N,,~~~~II~~Z,N
  Z   ~NI~~~~ZN~II
   NZ,,Z~~~NI~~~IN
     Z?Z,~NINI~NIINZ
      ZZI~~N,IIZ~~III    Z~I
    IN~NNI8ZIIIIIZZIIN    Z~I
 I~~II~~~IZIZ~~~Z~IZNNI   ZI~Z
NIIIII  ~Z?~~?~Z~~IN~~N NZ~~IZ
 ZN     Z~~~~II~III~~INIIIIIIN
      Z,~~ZZZ~NZII,,~~IIIIIII
     Z~IIN?????Z?I~~~IINIIII
      IIIII??????IIIIIIZIZN
     ZIIINN ZZZZIIIIIIZNN
     NN           ~IZ~ZZ       "} dexmap

let dexmap = PokeDex.add "CLEFABLE" {
name="CLEFABLE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"DOUBLESLAP";"METRONOME";"MOONLIGHT";];
stats={max_hp=95; attack=70; defense=73; speed=60; sp_attack=85;sp_defense=90;};
poca_type=("NORMAL", "NORMAL");
ascii="
     N$O              O$O
      N=:::::::=$I:::::N
        =:::I:=::::==N
      ++$I::==:::::=$+++O
     O++$::N::N$:::=N$$$$
       $::::$$::::::$II
      ::::::::::::::::??
    N:::::::::::::=N::=?O
        ::::::::::===?$?O
        ==::::::=====???
        N=======::==N??
         ====N?I:::=?O
          $$=  N::=N
                               "} dexmap

let dexmap = PokeDex.add "ARBOK" {
name="ARBOK";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"STRENGTH";"LEER";"POISON STING";"BITE";"POISON STING";"BITE";"GLARE";"SCREECH";"ACID";"HAZE";];
stats={max_hp=60; attack=85; defense=69; speed=80; sp_attack=65;sp_defense=79;};
poca_type=("POISON", "POISON");
ascii="           NN88+IIIIIZ
          +++??+IINIIII
        Z+NINZ+NNINNZNII
        +NZ=ZZIINZ===IIII
 Z+     ++N=ZN++NZZZN++II
  Z+Z   N+Z+++NN+++NN++IN
  Z+N     ++NNNNNNNN++IZ
 Z~+Z      I+NNNNI++IIN
 ~~Z        N+++++IN
 ~+N       ZN++++IZZN
 +~ZZ    ZI+++++INIIIII
 Z+~Z++++++N++++INZIIIIIN
   ZIIIIIIIZ++++ZIIIIIIIN     Z
     ZNNN  Z++++IIIZIINN     Z~
             IIIIIIIIN      Z~I"} dexmap

let dexmap = PokeDex.add "MR.MIME" {
name="MR.MIME";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"THUNDERBOLT";"CONFUSION";"SUBSTITUTE";"MEDITATE";"DOUBLESLAP";"LIGHT SCREEN";"REFLECT";"ENCORE";"PSYBEAM";"BATON PASS";"SAFEGUARD";];
stats={max_hp=40; attack=45; defense=65; speed=90; sp_attack=100;sp_defense=120;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="          OOI
           NOO OOO DIID
            O:..:NOOOODN
            : ::O:ON  OOI
           N=::O??=O  OOO N
          ???:NNNO??7   ::
      :N  =77   ?:D7=::=N
    INI:::=NI  ~??:
      :::: ??:::7:N7
          OO77N  7O:N
         O =       N:N
           =O      ==
        ODODO     NOIDO
        NOON         NN
                               "} dexmap

let dexmap = PokeDex.add "ODDISH" {
name="ODDISH";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"ABSORB";"SWEET SCENT";"POISONPOWDER";"STUN SPORE";"SLEEP POWDER";"ACID";"MOONLIGHT";"PETAL DANCE";];
stats={max_hp=45; attack=50; defense=55; speed=30; sp_attack=75;sp_defense=65;};
poca_type=("GRASS", "POISON");
ascii="


           7   ==7
        77 ??7=== O77
         =77O?7??777
          77N???NOO77?O
            $II$777?O
           I++IIIN
           $I8II$$
            N$$$N
           NN  8$N


                               "} dexmap

let dexmap = PokeDex.add "PSYDUCK" {
name="PSYDUCK";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"STRENGTH";"FLASH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"SCRATCH";"TAIL WHIP";"DISABLE";"CONFUSION";"SCREECH";"PSYCH UP";"FURY SWIPES";"HYDRO PUMP";];
stats={max_hp=50; attack=52; defense=48; speed=55; sp_attack=65;sp_defense=50;};
poca_type=("WATER", "WATER");
ascii="
                 N7
           ZZN===ZN
          ZN+======ZN
         Z?+ OO=  +==
          ?,,++,+??==N
          ,,,,,~Z?N?=?
           ++++N?????
          Z======????
          =========????
           ?????????N
          N,+NNNNN+++


                               "} dexmap

let dexmap = PokeDex.add "CHARIZARD" {
name="CHARIZARD";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"SWIFT";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"CUT";"FLY";"STRENGTH";"FLAMETHROWER";"GROWL";"EMBER";"SMOKESCREEN";"EMBER";"SMOKESCREEN";"RAGE";"SCARY FACE";"FLAMETHROWER";"WING ATTACK";"SLASH";"DRAGON RAGE";"FIRE SPIN";];
stats={max_hp=78; attack=84; defense=78; speed=100; sp_attack=109;sp_defense=85;};
poca_type=("FIRE", "FLYING");
ascii="   I  II   I++I$  I88$$$$8++
 II8888 O  $+$    I88$$$$$8I
 7888888I    IO   I888$$$$$87
7887 8OI87    777O8888$$$$88I $
88 7OIO 8887   I7888888$$88887$
O IIIIO IIIII7 788887  $    87$
 I+7OIII7 77IIII      777O  87$
 O7OI7OI 7O77IIIIIIO   777O 8
 III $ 77O7IIIIIIIOO7  O777
 7   $IO ~~~~~IIII7777 77777
   777  ~~~~~~~~II7OI7OIII77
       I~~~~~~~~~III I 7777+O
      III+~~~~~~+IIIII777I +O
      III7+++++++7IIII7++ IO
      77777O +++O 77777 IIIO   "} dexmap

let dexmap = PokeDex.add "ONIX" {
name="ONIX";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"REST";"ATTRACT";"STRENGTH";"TACKLE";"SCREECH";"BIND";"ROCK THROW";"HARDEN";"RAGE";"SANDSTORM";"SLAM";];
stats={max_hp=35; attack=45; defense=160; speed=70; sp_attack=30;sp_defense=45;};
poca_type=("ROCK", "GROUND");
ascii="     :=   7::::::N7==7==
     :=  ::::::::=N====7O
    7==7===O==O====N=7=7O
   .7===O==7OO=====NOO77NON
 O::::::=O7777OO7O7OOOO777O
 7 =:7: NO=O777N77   ==77OOO
 7::7N:==O7N777N   ON::==7OO
 =.=O::O7NNN7N   7::O:7O777O
  ====ONNN==     ::==N=777ON
     ONNN==   7::N:77OOO     =O
      ::N    N:7:ON777N   777NN
             ::N77ON:7   7NON
             =:77O 7:=7O7ON
              O=NN 7:=7OOO
             O===7777O7ON      "} dexmap

let dexmap = PokeDex.add "BEEDRILL" {
name="BEEDRILL";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"SWIFT";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FURY ATTACK";"FOCUS ENERGY";"TWINEEDLE";"RAGE";"PURSUIT";"PIN MISSILE";"AGILITY";];
stats={max_hp=65; attack=80; defense=40; speed=75; sp_attack=45;sp_defense=80;};
poca_type=("BUG", "POISON");
ascii="               I,      ==
                =,   I    =
        =         ,,I .
       =  .     I ==,   =  =
        $NN N.I   NNN= ,  .I
       I $= $N=O   = $= = I
       N . ::= ZII$   $
          8==Z+ZNIII$N I
           O=ON.OINO. N.I=
         NN .NNI$$NNI N I
    I ==,, NN.O=$$==NNIN
   =,,=N   $  ON==NNI   N
               O:=IN
          N     =N
         N                     "} dexmap

let dexmap = PokeDex.add "GROWLITHE" {
name="GROWLITHE";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"BITE";"ROAR";"EMBER";"LEER";"TAKE DOWN";"FLAME WHEEL";"AGILITY";"FLAMETHROWER";];
stats={max_hp=55; attack=70; defense=45; speed=60; sp_attack=70;sp_defense=50;};
poca_type=("FIRE", "FIRE");
ascii="
                   ZZZ
         ??Z Z    ::::::N
        ::::=Z   N:::====
      8Z:ZN7878N 888===Z
      Z+++N??Z?8$$?$?7
      .N:NN:?8NNN7N777N
      ::::::N77777777NN
       Z::=====7777N77NN
        Z:::===?8N   877
        77===N$$N    NN
        N    878


                               "} dexmap

let dexmap = PokeDex.add "ELECTRODE" {
name="ELECTRODE";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"FLASH";"THUNDERBOLT";"SCREECH";"SONICBOOM";"SELFDESTRUCT";"SCREECH";"SONICBOOM";"SELFDESTRUCT";"ROLLOUT";"LIGHT SCREEN";"SWIFT";"EXPLOSION";"MIRROR COAT";];
stats={max_hp=60; attack=50; defense=70; speed=140; sp_attack=80;sp_defense=80;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="
            Z:,,,:N
          ,,   ,,,,,:
        :,,,   ,,,,,,::
       Z,,,,,,,,,Z:::::N
       :Z,,,,,?,:,,,,,::
      N:,,,,,,,:,N,,,,::N
      N$,,,,,,,,,?,,,:+$N
       $7777,,,,,7777$$$
       N$7N:888888::N$$N
        $$$N       $$$$
          $$$$$$$$$$$
            N$$$$$N

                               "} dexmap

let dexmap = PokeDex.add "GRIMER" {
name="GRIMER";
learnable_moves=["DYNAMICPUNCH";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"FIRE BLAST";"THUNDERPUNCH";"REST";"ATTRACT";"FIRE PUNCH";"FLAMETHROWER";"THUNDERBOLT";"POISON GAS";"POUND";"HARDEN";"DISABLE";"SLUDGE";"MINIMIZE";"SCREECH";"ACID ARMOR";"SLUDGE BOMB";];
stats={max_hp=80; attack=80; defense=50; speed=25; sp_attack=40;sp_defense=50;};
poca_type=("POISON", "POISON");
ascii="

     7Z     7::+
    =N:=N Z::=  77
   N:====Z=+77++7+Z
       77=+NNNON7+++
        +7:I=Z=++7++7Z
         +Z::=Z+ZZ77=ZN
         Z+77777Z77==+=7Z
         7=777777==77+7N=Z
        +++77+7777++==+
             NNN


                               "} dexmap

let dexmap = PokeDex.add "FLAREON" {
name="FLAREON";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DETECT";"REST";"ATTRACT";"FLAMETHROWER";"TAIL WHIP";"SAND ATTACK";"EMBER";"QUICK ATTACK";"BITE";"FIRE SPIN";"SMOG";"LEER";"FLAMETHROWER";];
stats={max_hp=65; attack=130; defense=60; speed=65; sp_attack=95;sp_defense=110;};
poca_type=("FIRE", "FIRE");
ascii="
                         ?
      7  Z     877        ?
      77?::  ?  7  ?:?: ?::
      8:::: 8 87  :::::::::
      ZZ:?Z?  :ZZ=::::::=:?
     Z ??$ ?7::? ?=::=?=:=
     =8 ???77==???????????
     :::   ????:????8????
      :::::=???Z???7 ???
      Z====??  $ 777
        77  ?7 8  77
        77 8??   87

                               "} dexmap

let dexmap = PokeDex.add "PIDGEOT" {
name="PIDGEOT";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"SAND ATTACK";"GUST";"QUICK ATTACK";"SAND ATTACK";"GUST";"QUICK ATTACK";"WHIRLWIND";"WING ATTACK";"AGILITY";"MIRROR MOVE";];
stats={max_hp=83; attack=80; defense=75; speed=91; sp_attack=70;sp_defense=70;};
poca_type=("NORMAL", "FLYING");
ascii="     N::INZZZ+ZZZN
      NZ NNINZZ+ZZ
     =Z?:::NZ  Z+ZZN
      +:::ZZN88 Z+ZZ
     8::::NIIIIIIN+ZN
    Z:::::ZIIIIIIII+Z
   8Z:::::ZIIIIIII8:+ZN
   NZ+::++NZZIIIII:::+ZZN
    ZZ+++++ZZZ8I+++:+NZ+++
     NN++++++N+++++Z+ZN N   ZZZ
       N+++++++++++++++  ZZZ:::
        N++NN+++8++++++NZ::::::
         ?Z  N88ZOZN+N+N:::::::
     ZI=??8  N?NOZOZZO:Z:::::+I
      N     ==?=?  OII::::::III"} dexmap

let dexmap = PokeDex.add "DRAGONITE" {
name="DRAGONITE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"SWIFT";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"FLY";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"LEER";"THUNDER WAVE";"TWISTER";"THUNDER WAVE";"TWISTER";"DRAGON RAGE";"SLAM";"AGILITY";"SAFEGUARD";"WING ATTACK";"OUTRAGE";"HYPER BEAM";];
stats={max_hp=91; attack=134; defense=95; speed=80; sp_attack=100;sp_defense=100;};
poca_type=("DRAGON", "FLYING");
ascii="      II ???  I   8?IOOOOO
   I  OOO++? II   IO$$O
        ?????III IOO$     888
           =$II? O$$O   ???8
         8 $=I???     8???
       8??=$77????   8I??I
    8??? =7777? ??I 8,IIII
     III,,,,,7?????I   III
        ,,,,,,?IIIII8 IIIII
      ?,,,,,,77?? I~IIIIII
     8 ,7777==++??IIIIIII$
     ??====== ????II II$7 88
      II=====7IIIIII $$   ==8 ?
      III $$$77 III 7     88 ?+
      8$III      II          ?+"} dexmap

let dexmap = PokeDex.add "RHYHORN" {
name="RHYHORN";
learnable_moves=["HEADBUTT";"ROLLOUT";"ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"REST";"ATTRACT";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"HORN ATTACK";"TAIL WHIP";"STOMP";"FURY ATTACK";"SCARY FACE";"HORN DRILL";"TAKE DOWN";"EARTHQUAKE";];
stats={max_hp=80; attack=85; defense=95; speed=25; sp_attack=30;sp_defense=30;};
poca_type=("GROUND", "ROCK");
ascii="                ~~~
           $~N  ,~~N    ?
           ,????????????~
       N  $????$O$???????
     $N??,,,,OO,,~$~~?????
    $~?~~~$,N~N?O$????????~
   ?,?~~~$,N??N?????N??~~N?
   ,$~~~$,N?O??NO~???O?~~?~N
   ~?~~$~N??????N??N?????~??
  ,,O,~~ ????~~~???~~?~??~??
   ~O~N??N$$N~~~?O?????ONNOO
   $~N?N$NOOO~~~????   ~NON
   N $NN    $~$?O
     N     N,N N
                               "} dexmap

let dexmap = PokeDex.add "CHARMELEON" {
name="CHARMELEON";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"CUT";"STRENGTH";"FLAMETHROWER";"SCRATCH";"GROWL";"EMBER";"EMBER";"SMOKESCREEN";"RAGE";"SCARY FACE";"FLAMETHROWER";"SLASH";"DRAGON RAGE";"FIRE SPIN";];
stats={max_hp=58; attack=64; defense=58; speed=80; sp_attack=80;sp_defense=65;};
poca_type=("FIRE", "FIRE");
ascii="              $+
          OIIIIO
         $IIOIIN
        OIIIIII$           +
        N$O$$$$
            N$$         $$$$ I
         N$+~IIIO     I$+$$$$
       O$$N~~IIN$I    +I$I$$
      $$N N~~~$$ +IN ++I$I
     NNN  ~~~II$N$ =  IO$$
      N OIIIIIOI$N N II
        $$$IIO+II$$$$N
        I$$$  $$$NN
       N $N   $I$$
                               "} dexmap

let dexmap = PokeDex.add "KADABRA" {
name="KADABRA";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"TELEPORT";"KINESIS";"CONFUSION";"CONFUSION";"DISABLE";"PSYBEAM";"RECOVER";"FUTURE SIGHT";"PSYCHIC";"REFLECT";];
stats={max_hp=40; attack=35; defense=30; speed=105; sp_attack=120;sp_defense=70;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="        Z       =
        Z=8   8,=
        8=,,,==I      =N 8
  N :N$$I,$$===ZN$$$O  I N
   ::O$8ZN==8 ZIINOOON==II
  ====ZZONZZIINONN NI8IN8
  INZIN =I8IIIIN8N$=8=====
   ZNNZ=I 88OO8=NN=$$III==N
    =N=,   I$II=,NIIOOIIII=8
      Z, 8==III8,,NIIOIIIIIIII
       N==8 8IN8NI=IIOI 8NN
        IIN   NIII==I
       Z=ZIIN      =IIN
      NNN Z       N=IIZ
                               "} dexmap

let dexmap = PokeDex.add "METAPOD" {
name="METAPOD";
learnable_moves=["HARDEN";"HARDEN";];
stats={max_hp=50; attack=20; defense=55; speed=30; sp_attack=25;sp_defense=25;};
poca_type=("BUG", "BUG");
ascii="

              +O
             +II
           ZIIII
           +II7 I
          IIIZIIII
          7IZIZ7777O
           I77777O
           77O7777O
             7O77777Z7



                               "} dexmap

let dexmap = PokeDex.add "EEVEE" {
name="EEVEE";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";];
stats={max_hp=55; attack=55; defense=50; speed=55; sp_attack=45;sp_defense=65;};
poca_type=("NORMAL", "NORMAL");
ascii="           Z?
           7
            7    77
               Z 8
          ??????7   Z~
         88?????  ?~~~
         ????8?7 Z?77~~
         ?7Z?77Z~ 777?7
        ~~:::?~??ZZ77ZZ
          ~:~?~ 77ZZ7Z
            ?87 77
          78 ??


                               "} dexmap

let dexmap = PokeDex.add "VILEPLUME" {
name="VILEPLUME";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"SWEET SCENT";"STUN SPORE";"PETAL DANCE";];
stats={max_hp=75; attack=80; defense=85; speed=50; sp_attack=100;sp_defense=90;};
poca_type=("GRASS", "POISON");
ascii="
          8++++N8++??NN
        ++~IIOONIII?+,~IN
     8++II8ID$$IO8II+++8Z
   I?+++?IIOOOO8,,?+,+I~IN
  8I~~++?IIII,I8??+++IIIZN
  NII?++++,++++++?,~IIZZ
   ZZ8I,++?++,,INZZZZZN
      ZZIIIIIZZNOOON
           OOOOOOOO$N
        DDO$$$$$$$$N$$
            DOOOOOD
            DO    OON
          N$O      D$$
                               "} dexmap

let dexmap = PokeDex.add "POLIWRATH" {
name="POLIWRATH";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"HYPNOSIS";"DOUBLESLAP";"SUBMISSION";"SUBMISSION";"MIND READER";];
stats={max_hp=90; attack=85; defense=95; speed=70; sp_attack=70;sp_defense=90;};
poca_type=("WATER", "FIGHTING");
ascii="         ZOIN   OIIII
        ZZ II==III  NN
        IO IIIIIIZ OIIIN   = Z
 ZZ   OIIO   ZZZ   OIIIIII=N 7
   =NOINO: NZ  :N   OZZII ==
 N==NIZZO:N NNZ::N:::ZZZZN==
:====ZZZZ:Z:N:N:NZ::OZZ  NNN=N
==NOZZZNZZ:N:::N:Z:OZZZ
        ZZZZO:::OOZZZZN
         NZZZZZZZZZZZZ
        NZZZ       ZZZN
        ZZZ         ZZZ
     ==IIZZ         ZZOI7O
    OZZZZZN         ZZIIIIO
                       NNN     "} dexmap

let dexmap = PokeDex.add "HAUNTER" {
name="HAUNTER";
learnable_moves=["TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"THUNDERBOLT";"HYPNOSIS";"LICK";"SPITE";"SPITE";"MEAN LOOK";"NIGHT SHADE";"CONFUSE RAY";"DREAM EATER";"DESTINY BOND";];
stats={max_hp=45; attack=50; defense=45; speed=95; sp_attack=115;sp_defense=55;};
poca_type=("GHOST", "POISON");
ascii="         $+          Z=$N
         +=Z      $+==$N
         ==++++++===$$$
      ZZZ=+++++===$$$N  ZZ
       N===++===$$$$$$+$N
         ====+Z $$$$$$$$Z
        Z:$$$ :Z$$$Z$$$OO7
    77  N$+++++$N$$~$Z$$~~O
    OZ$~7ZNO7777Z$$ONON$+$~7
     7NZ$$ZN$Z$$$$$$$ZNO$N
   $+$ZZZ$$~N   NZ$$$$
  OO    OOON$


                               "} dexmap

let dexmap = PokeDex.add "DUGTRIO" {
name="DUGTRIO";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"SCRATCH";"GROWL";"MAGNITUDE";"GROWL";"MAGNITUDE";"DIG";"SAND ATTACK";"SLASH";"EARTHQUAKE";"FISSURE";];
stats={max_hp=35; attack=80; defense=50; speed=120; sp_attack=50;sp_defense=70;};
poca_type=("GROUND", "GROUND");
ascii="

              8???8
             7777777
            D77D7777
             7778????
        ?????8777N?N77
        ?8???7787~?D77
        D??777NN777777
       O8777777777777NN$
      $?$:?N?N::?O?:?$O$O$N
        ????$$$?????$$$$O


                               "} dexmap

let dexmap = PokeDex.add "NIDORINO" {
name="NIDORINO";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"STRENGTH";"THUNDERBOLT";"ICE BEAM";"LEER";"TACKLE";"HORN ATTACK";"DOUBLE KICK";"POISON STING";"FOCUS ENERGY";"FURY ATTACK";"HORN DRILL";];
stats={max_hp=61; attack=72; defense=57; speed=65; sp_attack=55;sp_defense=55;};
poca_type=("POISON", "POISON");
ascii="        Z=      ==
        =ZI   Z== Z
       Z=IN Z=NZIN=I
      Z=III:=ZZZIZI  =
      ZIIII=NZ??NIII=N
       ZIN=NZZ?=IIIZIZ=N
        =====III=I=I=II
      Z:==:~====II=IZIIIN
     NNN==Z==ZIIIZIIIZII
       N===NNNIZ::ZNZIIIN
        INOZNIIN=:ZZ IIII
       ZZ~Z  ZZZN==IN  ~N
                  NN

                               "} dexmap

let dexmap = PokeDex.add "NIDORINA" {
name="NIDORINA";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"STRENGTH";"THUNDERBOLT";"ICE BEAM";"GROWL";"TACKLE";"SCRATCH";"DOUBLE KICK";"POISON STING";"TAIL WHIP";"BITE";"FURY SWIPES";];
stats={max_hp=70; attack=62; defense=67; speed=56; sp_attack=55;sp_defense=55;};
poca_type=("POISON", "POISON");
ascii="        I
        =I=      II
      ZI===  : :==
      Z:===N :OOOOZ
        I:::IO???OZ:Z
       I:::====IIN==N
        ===N=====I===I
       Z=======Z=====NZI=Z
      I:Z=Z7Z==::ZI=Z=NIN
      NN   ZIZ::=:=II=I
            I===::NIIII
             N I   IN


                               "} dexmap

let dexmap = PokeDex.add "DIGLETT" {
name="DIGLETT";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"SCRATCH";"GROWL";"MAGNITUDE";"DIG";"SAND ATTACK";"SLASH";"EARTHQUAKE";"FISSURE";];
stats={max_hp=10; attack=55; defense=25; speed=95; sp_attack=35;sp_defense=45;};
poca_type=("GROUND", "GROUND");
ascii="



             7?78
            777777
           N7DD777N
           ND77D77NO
          $N777777NOO?$
        ??:?N:??N?$$?N?
              ???    ?



                               "} dexmap

let dexmap = PokeDex.add "MACHOKE" {
name="MACHOKE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"LOW KICK";"LEER";"FOCUS ENERGY";"FOCUS ENERGY";"KARATE CHOP";"SEISMIC TOSS";"FORESIGHT";"VITAL THROW";"CROSS CHOP";"SCARY FACE";"SUBMISSION";];
stats={max_hp=80; attack=100; defense=70; speed=45; sp_attack=50;sp_defense=60;};
poca_type=("FIGHTING", "FIGHTING");
ascii="                   ~+~~O
      $~~++    D     ~~O7~
     O~~~$+  ++~~~    ~~$?
    ~O~$       ~$D  $~7??$
   ~7~~+~~~??~~~::~+?~??
   $~$+++~?~+?? ??++???
      $????~~~~+~~~+?
           ~~~~~~~~$?
            ???$???$
              $OD $
         $+~~++$$ Z
        +~:~?$ ZZZ$?
         ?+?~?  $????$
          $?$    ???++$
         $~~~   $$~~~~+        "} dexmap

let dexmap = PokeDex.add "NIDORANF" {
name="NIDORANF";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"THUNDERBOLT";"GROWL";"TACKLE";"SCRATCH";"DOUBLE KICK";"POISON STING";"TAIL WHIP";"BITE";"FURY SWIPES";];
stats={max_hp=55; attack=47; defense=52; speed=41; sp_attack=40;sp_defense=40;};
poca_type=("POISON", "POISON");
ascii="


              Z
          ,..$ =,ZZ=
         IIN,,,,$$ZZ=Z
        ,Z,IZ,,N,NZ Z
         ,N,,,,,,,,=Z
           ,,,,,,,I,N
           Z=,=,,====
            ==Z==NZ=
           ZIN I= II


                               "} dexmap

let dexmap = PokeDex.add "CUBONE" {
name="CUBONE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"ICE BEAM";"GROWL";"TAIL WHIP";"BONE CLUB";"HEADBUTT";"LEER";"FOCUS ENERGY";"BONEMERANG";"RAGE";"FALSE SWIPE";"THRASH";"BONE RUSH";];
stats={max_hp=50; attack=50; defense=95; speed=35; sp_attack=40;sp_defense=50;};
poca_type=("GROUND", "GROUND");
ascii="

            N7  ,7 N
       O    O   N,~
       ~      ,N N~~O
        O    ,,,ON~
         N ,~N~N778
        I,I77777++7II
         NN  77::::
          N7I+I8::878
           N777NN777
             N


                               "} dexmap

let dexmap = PokeDex.add "NIDORANM" {
name="NIDORANM";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"THUNDERBOLT";"LEER";"TACKLE";"HORN ATTACK";"DOUBLE KICK";"POISON STING";"FOCUS ENERGY";"FURY ATTACK";"HORN DRILL";];
stats={max_hp=46; attack=57; defense=40; speed=50; sp_attack=40;sp_defense=40;};
poca_type=("POISON", "POISON");
ascii="

         +ZZ    ~ :
        +~++  +:+8
        ~+++N~Z8ZIN
        I+++++8ZI++~
         Z:~Z++8++N++
       Z::~~~++Z++ZZ
        N++~Z+++Z~I+N
         ~~+++N~Z+++
        ~~     N



                               "} dexmap

let dexmap = PokeDex.add "MAGNETON" {
name="MAGNETON";
learnable_moves=["ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"FLASH";"THUNDERBOLT";"THUNDERSHOCK";"SUPERSONIC";"SONICBOOM";"THUNDERSHOCK";"SUPERSONIC";"SONICBOOM";"THUNDER WAVE";"LOCK ON";"SWIFT";"SCREECH";"ZAP CANNON";];
stats={max_hp=50; attack=60; defense=95; speed=70; sp_attack=120;sp_defense=70;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="        OZN      8=I
        Z?88N$~,+N
       O7N 8$   $,+
        OI8OI+  ,,NOIO
            N,,I +8ON8Z?
       + ,I +N++~N88O=O
    OI+,$$,~++ +,, ,+78
   =78$$   ,+++ON~,,,+
    OI8+OI888N$,,$   N8O=7
   8?8  =NNI8  NN,  $NO N=
        8?Z8 88888NNO88O?Z
         N   ZZ O8   O  N?
             8 =7

                               "} dexmap

let dexmap = PokeDex.add "DITTO" {
name="DITTO";
learnable_moves=[];
stats={max_hp=48; attack=48; defense=48; speed=48; sp_attack=48;sp_defense=48;};
poca_type=("NORMAL", "NORMAL");
ascii="


             ,= Z
         I,=======I
          ===========
          Z==========
          ==========I
        II+========IIII
         IIIIIIIIIIIIIZ




                               "} dexmap

let dexmap = PokeDex.add "KOFFING" {
name="KOFFING";
learnable_moves=["ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"FIRE BLAST";"REST";"ATTRACT";"FLAMETHROWER";"THUNDERBOLT";"POISON GAS";"TACKLE";"SMOG";"SELFDESTRUCT";"SLUDGE";"SMOKESCREEN";"HAZE";"EXPLOSION";"DESTINY BOND";];
stats={max_hp=40; attack=65; defense=95; speed=35; sp_attack=60;sp_defense=45;};
poca_type=("POISON", "POISON");
ascii="       =:::
      ==::==     :=
     =:::=:=I   =:::I
       I=I=    ~O I     :::=
          ON+~~++7    :=::::
          7  ++: :+N+===:===I
         +O $II$ O++N  ===II
       O7+++7OO7++++7
   :::I N7++:+:+++7+7
  ::==:=OO7::77:7N77
   II==I  N++7++7777 =
       ::== 7NNN   I=::=I
       I=I        I::===
                   I=I
                               "} dexmap

let dexmap = PokeDex.add "GASTLY" {
name="GASTLY";
learnable_moves=["TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"THUNDERBOLT";"HYPNOSIS";"LICK";"SPITE";"MEAN LOOK";"NIGHT SHADE";"CONFUSE RAY";"DREAM EATER";"DESTINY BOND";];
stats={max_hp=30; attack=35; defense=30; speed=80; sp_attack=100;sp_defense=35;};
poca_type=("GHOST", "POISON");
ascii="                  ~+~
        +~   ~~~  ~~    ~
           ~~~~~ ~~~
        ~~~77777+7+++~  ~
      ~~++78$7777877+~~
   ~+  ~7N 888888+8N7++~~
       ~7  8888N  :877+~~ ~~
       ~7:  OO+   :877+~~ +~
      ~++78+88:  :8N++~~ ~
        ~7N8O77 8877+++~  ~
        ~~7+777777+++~~~~
        ~~~~~~++77+~   ~
        ~~     ~~~~~ ~   ~++~
                     +~  ~++~
                               "} dexmap

let dexmap = PokeDex.add "CATERPIE" {
name="CATERPIE";
learnable_moves=["TACKLE";"STRING SHOT";];
stats={max_hp=45; attack=30; defense=35; speed=45; sp_attack=20;sp_defense=20;};
poca_type=("BUG", "BUG");
ascii="


         Z+   Z+
           IIIZ Z
          7ZZ+$~~Z
          7+777~~Z
           788ZZZZ   $
           :~~~OZ7  Z~
            :Z~ Z   $
            ~~Z:ZO~ZO
              ~ZZZ~


                               "} dexmap

let dexmap = PokeDex.add "PARAS" {
name="PARAS";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FLASH";"SCRATCH";"STUN SPORE";"POISONPOWDER";"LEECH LIFE";"SPORE";"SLASH";"GROWTH";"GIGA DRAIN";];
stats={max_hp=35; attack=70; defense=55; speed=25; sp_attack=45;sp_defense=55;};
poca_type=("BUG", "GRASS");
ascii="

        ==?I8   ??$
       8$$IN DD$??$I
         DD$$D$$I$$N
       $.=+++IO$$DD
     +++~~II$=.~D$N$$
    $++ID$+$$Z~Z+++N ON
    IIIN  NZNDO+++I O N
     I        IIII
              I$



                               "} dexmap

let dexmap = PokeDex.add "NIDOKING" {
name="NIDOKING";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"HORN ATTACK";"DOUBLE KICK";"POISON STING";"THRASH";];
stats={max_hp=81; attack=92; defense=77; speed=85; sp_attack=85;sp_defense=75;};
poca_type=("POISON", "GROUND");
ascii="    $ON N  NOI$$$$I
    $8~NOIII~$$$I$N O
    NII~====$$$8INOII
  O~~========ONIIIII
   I~=O==~=I=IINO~=IN=NN=  I=
 ~~==ON~===NOOII==O===~~==N I~O
=ONIION=N IIO===IIIII==I =IO ~=
OIIO   N$    ====IIIIIO=IIO I~I
 =        N======OIIIIIN=ONN~I=
         ON$$=====O==II==~~I==I
       ==O      ===~~~NI====OIN
      OIIII=======N====INIIII
       OOIIIIN$$II=N==IIINN
        OIIII   NNO~=NIIII
      NNN        O=== =III     "} dexmap

let dexmap = PokeDex.add "VENOMOTH" {
name="VENOMOTH";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"SWIFT";"REST";"ATTRACT";"FLASH";"DISABLE";"FORESIGHT";"SUPERSONIC";"SUPERSONIC";"CONFUSION";"POISONPOWDER";"LEECH LIFE";"STUN SPORE";"GUST";"PSYBEAM";"SLEEP POWDER";"PSYCHIC";];
stats={max_hp=70; attack=65; defense=60; speed=90; sp_attack=90;sp_defense=75;};
poca_type=("BUG", "POISON");
ascii="  ,,+             +....+..
  $+,+           $.......N
   ++,$         $+.......
    ,,,+   $    +,+,....N
     $+,+ $$    +~,,,...
      $,$N~~ $,+~+~+,,..$
       ,~$~,+,N+~~~+~+++.$
       NN~~,~~++~~+~~,...N
        $$~~NN=+$+~~~~~$N
         $N~+$OO+O++...+.$
        $~+ONNNN++,+,..+N
         ,,+,NIIIOO,,+...
          ,N+$NNION     N
          $,++$ OI
          $,,++$               "} dexmap

let dexmap = PokeDex.add "MACHAMP" {
name="MACHAMP";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"LEER";"FOCUS ENERGY";"FOCUS ENERGY";"KARATE CHOP";"SEISMIC TOSS";"FORESIGHT";"VITAL THROW";"CROSS CHOP";"SCARY FACE";"SUBMISSION";];
stats={max_hp=90; attack=130; defense=80; speed=55; sp_attack=65;sp_defense=85;};
poca_type=("FIGHTING", "FIGHTING");
ascii="  IZI +   88I:$88   +ZZ+I
  IIII   ZZZ88:II ZZ  III
   IIII ++ ::+ 88II++  III
    +IZI::++88+III+::II++II
     ZIZ+Z+IIIII+III+I IIII
      +IZ::+Z:++++I++++I
    Z++ZZI+II+++I I II+++
     ++I  II8IIIII   I++I
      +++I +++:+ZZ I+II
         ++ Z   ZIZII
       ++++Z   ZI++II
      ++I+II    II++:I
       IZZZ    Z  IZ+II
        ZIZ   Z++::Z ZIZ
      ZZZZZ ZZ::I+:+ Z         "} dexmap

let dexmap = PokeDex.add "VENONAT" {
name="VENONAT";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"SWIFT";"REST";"ATTRACT";"TACKLE";"DISABLE";"FORESIGHT";"SUPERSONIC";"CONFUSION";"POISONPOWDER";"LEECH LIFE";"STUN SPORE";"PSYBEAM";"SLEEP POWDER";"PSYCHIC";];
stats={max_hp=60; attack=55; defense=50; speed=45; sp_attack=40;sp_defense=55;};
poca_type=("BUG", "POISON");
ascii="                     N
                     :
           7N+8 ++:
           7:+++7N++II
         $++7+++N++II8
         I+~?+++7~77III$
         ID77+I+~~777II$
        NID?7$$$D7?7DII$
        $$IIINNNIIIIII8N
         $$?NIIIOOI$I$$$
          $NN$$$N?$$$NN
           OON$$$NN
          N??     ~?~
                   NN
                               "} dexmap

let dexmap = PokeDex.add "PIKACHU" {
name="PIKACHU";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"STRENGTH";"FLASH";"THUNDERBOLT";"THUNDERSHOCK";"GROWL";"TAIL WHIP";"THUNDER WAVE";"QUICK ATTACK";"DOUBLE TEAM";"SLAM";"THUNDERBOLT";"AGILITY";"THUNDER";"LIGHT SCREEN";];
stats={max_hp=35; attack=55; defense=30; speed=90; sp_attack=50;sp_defense=40;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="

         D?       DD
         8?O:=7===O
         8 ==O =     ==O
         ==87==I?  =====O
         O??????? ???==
          =?????= 8??
          ======== ??
          ===7=O=? O
         ?=====?=?
          ?7  ???7


                               "} dexmap

let dexmap = PokeDex.add "TANGELA" {
name="TANGELA";
learnable_moves=["HEADBUTT";"TOXIC";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"SLEEP POWDER";"ABSORB";"POISONPOWDER";"VINE WHIP";"BIND";"MEGA DRAIN";"STUN SPORE";"SLAM";"GROWTH";];
stats={max_hp=65; attack=55; defense=115; speed=60; sp_attack=100;sp_defense=40;};
poca_type=("GRASS", "GRASS");
ascii="

           ~~88~???88
        ~8???8~?N?~~78
        78?7N77?8877778
       ~7777NNN777N877N
      87??N  NN  N7N?77
        ~78==NN==N7777N77
        ~~8??77NN7??7NN
        87N77N77~N8?87
         88NN??~8??N
         ZIZON   Z+IZ
                  NN

                               "} dexmap

let dexmap = PokeDex.add "TAUROS" {
name="TAUROS";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"REST";"ATTRACT";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"TAIL WHIP";"RAGE";"HORN ATTACK";"SCARY FACE";"PURSUIT";"REST";"THRASH";"TAKE DOWN";];
stats={max_hp=75; attack=100; defense=95; speed=110; sp_attack=40;sp_defense=70;};
poca_type=("NORMAL", "NORMAL");
ascii="                        8+8
                    ++    8
                88     88
           IIIIII8???8    8 8
         IIIII+III ??????788
     +8 =???++7 II$ ??????7
      7==??77 O$$$$ ??????77  +
       88?877O$$$$$??????777
        ??7 OOOO$O 777777Z7
        $O OOOOOO 7787 8  77
          OOOOOO 7??  88   Z
          ??  O   7  88     Z
            8     Z
                  7
                               "} dexmap

let dexmap = PokeDex.add "TENTACRUEL" {
name="TENTACRUEL";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"SURF";"WHIRLPOOL";"ICE BEAM";"SUPERSONIC";"CONSTRICT";"SUPERSONIC";"CONSTRICT";"ACID";"BUBBLEBEAM";"WRAP";"BARRIER";"SCREECH";"HYDRO PUMP";];
stats={max_hp=80; attack=70; defense=65; speed=100; sp_attack=80;sp_defense=120;};
poca_type=("WATER", "POISON");
ascii="          Z Z==IZ~I8
        ZIZZZ==ZZZ~~I
        ZZ8Z+++Z88Z~ZN
      Z+Z8I+88+ZZ88ZZZ+
     +++++++8Z++++IZZII++Z
       N+IZ++++III+++IN N
         NNIZIN  NNNN
        7ZNNIZNNNN7N?N
    Z?7ZZZ?=IINN N7N? ?N
 77ZZ   ?7=II  Z7NI?7?N?N
    NN?N  +IIZ7N ZN ?Z7Z=N
=??7N     N+INN  IZN?Z7 7N
N         ZII   ZZ?7 ?N
            IZ  =?N  ?
               Z=7             "} dexmap

let dexmap = PokeDex.add "BELLSPROUT" {
name="BELLSPROUT";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"VINE WHIP";"GROWTH";"WRAP";"SLEEP POWDER";"POISONPOWDER";"STUN SPORE";"ACID";"SWEET SCENT";"RAZOR LEAF";"SLAM";];
stats={max_hp=50; attack=75; defense=35; speed=40; sp_attack=70;sp_defense=30;};
poca_type=("GRASS", "POISON");
ascii="
             777
           7  ~~++
            ~~ +++
          $$~++++7
          8 I
            $I$  8
           IIII$888I8
           $$$7  I=II
             7    $$$88
         8    8    88
        8 8
         8

                               "} dexmap

let dexmap = PokeDex.add "VAPOREON" {
name="VAPOREON";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"TAIL WHIP";"SAND ATTACK";"WATER GUN";"QUICK ATTACK";"BITE";"AURORA BEAM";"HAZE";"ACID ARMOR";"HYDRO PUMP";];
stats={max_hp=130; attack=65; defense=60; speed=65; sp_attack=110;sp_defense=95;};
poca_type=("WATER", "WATER");
ascii="                ZO
               N: N    N
          :ZN N:88N~NZ:
           :?8ZZ8+88?:O
           O: ~~ZN+O::
            ~+~II~I~~N
            NI NN~~~N
            ZN I  N   ~~N
         8Z+~+++IIN  ~~+
       8~~~I++8+NI88+++
      Z~+8+++8II8IN  III
      8Z8~~++8Z+IN    NII
       ++888+++NIN
        NN++N
                               "} dexmap

let dexmap = PokeDex.add "POLIWHIRL" {
name="POLIWHIRL";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";];
stats={max_hp=65; attack=65; defense=65; speed=90; sp_attack=50;sp_defense=50;};
poca_type=("WATER", "WATER");
ascii="
           Z      ZO
         Z Z7OIIO=ZZ7
         I Z7===IIZZZI
        IIII:     IIIIO
       IOIIZZ    :Z I7IION
    Z = II :::ZZ:N N 7Z  +=N
        ZI  NZZ  N N ZZ   ==
     ==NZZ=N:ZNZ:N=N=ZZ   ==
          N==NNN=Z=+Z   NN
           ZNNZZZZNZN
        777ZZ     OZI7
                  O7IIZ

                               "} dexmap

let dexmap = PokeDex.add "GOLBAT" {
name="GOLBAT";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"SCREECH";"LEECH LIFE";"SUPERSONIC";"SUPERSONIC";"BITE";"CONFUSE RAY";"WING ATTACK";"MEAN LOOK";"HAZE";];
stats={max_hp=75; attack=80; defense=70; speed=90; sp_attack=65;sp_defense=75;};
poca_type=("POISON", "FLYING");
ascii="  IIO:?              :OIIIII
   IIIO+           ::IIIIII
   IIIII?         OOIIIIIII
   +++IO           ?OIOII++$
  $$II++   OO?++O   OIIII$++
 OII++++  $+:+O ++  ?OI++++++
    +++O? $+++ O++O+OIO++++
     ++IIO      ++?IIII+++
      OIIIIO    O+IIIIII+O
           ?$   O?O      O
           ?$   O??
     ?O??? :    ?? O+
     ::O+?O? ???? O+
       O ? ::??   +
        IIOOO::??              "} dexmap

let dexmap = PokeDex.add "MANKEY" {
name="MANKEY";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"THUNDERBOLT";"SCRATCH";"LEER";"LOW KICK";"KARATE CHOP";"FURY SWIPES";"FOCUS ENERGY";"SEISMIC TOSS";"CROSS CHOP";"SCREECH";"THRASH";];
stats={max_hp=40; attack=80; defense=35; speed=70; sp_attack=35;sp_defense=45;};
poca_type=("FIGHTING", "FIGHTING");
ascii="
                      ~~I
                     N88NN
           OO   OO ON   I=
      N8    I=:::=:8:  :==
    +~~I8   O:,,,::::::=
     NN :O:::O8IO :::=N   ININ
        N==:::=?==::::O     OI
           O:$??$::===      =N
            :=======:NN====N
           ==       ==N
          O+IIN    8IIN
           8I        + +N
                     N
                               "} dexmap

let dexmap = PokeDex.add "HITMONCHAN" {
name="HITMONCHAN";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"AGILITY";"PURSUIT";"THUNDERPUNCH";"ICE PUNCH";"FIRE PUNCH";"MACH PUNCH";"MEGA PUNCH";"DETECT";"COUNTER";];
stats={max_hp=50; attack=105; defense=79; speed=76; sp_attack=35;sp_defense=110;};
poca_type=("FIGHTING", "FIGHTING");
ascii="             ++++8I
            +I~~8~NIN
            8+~~~+II
          I8 .N+..I8++8
         NNN+8N+8I88+I
          NNII$$+8++IN
           8$$$~+NN$$NI
           INNNNNN
            ~~~$+~~N
            NINN~NI8
            I+    NI
           II     IN
           $N    N~:+
         $:~N
          NN                   "} dexmap

let dexmap = PokeDex.add "GOLEM" {
name="GOLEM";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"STRENGTH";"FLAMETHROWER";"DEFENSE CURL";"ROCK THROW";"MAGNITUDE";"DEFENSE CURL";"ROCK THROW";"MAGNITUDE";"SELFDESTRUCT";"HARDEN";"ROLLOUT";"EARTHQUAKE";"EXPLOSION";];
stats={max_hp=80; attack=110; defense=130; speed=45; sp_attack=55;sp_defense=65;};
poca_type=("ROCK", "GROUND");
ascii="             88 8?O
          888OO7?????
        ?OO7???8OOOO8
       7?8N?????ON???7N++N
      8???877777ONOO78N77N N
     8?8NNNNN+++~877877 ++
    88++N??77+++~~NOON7N
  7  +87N7777 +++INO8OON
 NN+77++7NNN7N77++88O88N
    N NNOOO8877878O88NN
      ++OO78OOOOO8N7+++8
     N++777888888N7+77++
      N7877N       8777
     N7N77N       N77+++
                   N  NN       "} dexmap

let dexmap = PokeDex.add "RAICHU" {
name="RAICHU";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"STRENGTH";"FLASH";"THUNDERBOLT";"TAIL WHIP";"QUICK ATTACK";"THUNDERBOLT";];
stats={max_hp=60; attack=90; defense=55; speed=100; sp_attack=90;sp_defense=80;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="           8ZO    8ZZ??
=          ZZ????ZOO?=Z
=Z        I????? ?OZ   Z
Z=Z      8??OO??==I O
 ==Z?    IZ??????Z?$Z
 ?????    ?,,,?????I
  ????   Z,,,,,???I
   ?ZO?  =,,,,,,??$Z
       Z??,,,,,$??I$
        ?I?,,,,???II     8
          $$8$I8II$ 88 88
           8I     $
        8ZZII    8?O
         OO      ZZZ
                               "} dexmap

let dexmap = PokeDex.add "PIDGEY" {
name="PIDGEY";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"TACKLE";"SAND ATTACK";"GUST";"QUICK ATTACK";"WHIRLWIND";"WING ATTACK";"AGILITY";"MIRROR MOVE";];
stats={max_hp=40; attack=45; defense=40; speed=56; sp_attack=35;sp_defense=35;};
poca_type=("NORMAL", "FLYING");
ascii="

          7III
         7O7,+++
        ZII7DDDN
         DI::D77ID
          O++7III77 O O
          :::D777DDDO7IN
          +:++77D7::77N
           N++++N+I+N
             DDNO
           NNNI NN


                               "} dexmap

let dexmap = PokeDex.add "MEWTWO" {
name="MEWTWO";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"DISABLE";"BARRIER";"SWIFT";"PSYCH UP";"FUTURE SIGHT";"MIST";"PSYCHIC";"AMNESIA";"RECOVER";"SAFEGUARD";];
stats={max_hp=106; attack=110; defense=90; speed=130; sp_attack=154;sp_defense=90;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="           I:I:::=     I    $
           I,,,:==    $      $
           ,::,O== O  $      $
           O::==== IO $     $$$
             O OI      $    $$
            O:=::OI    $$   $
     O  O::O II=    :: :=$
   :::::O    :=I   I:O=II$
    O:O    O:+I$=:  O8I=O$
          I:$IIO::II$$$O$
           =I$$$=III $$
            II 88 III
            =O      I
           =:O
        =O:=        =IO        "} dexmap

let dexmap = PokeDex.add "ARCANINE" {
name="ARCANINE";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"LEER";"TAKE DOWN";"FLAME WHEEL";"EXTREMESPEED";];
stats={max_hp=90; attack=110; defense=80; speed=95; sp_attack=100;sp_defense=80;};
poca_type=("FIRE", "FIRE");
ascii=" +NO:::+OI+N+     :::::::N
 O7+:+++O+:N+    O::::::::+
  N+++O777N++O   ::::::O++++
  +++7O::::+++O O+::::++O+++:O
  7::++O++OO+++O +++++++O+++O:
   N+++++++O7+O  NI7N++++O++O
    ::++:++ON77NNINNN7N
   O::::::++ONINIIIIINN
    +::+:++77INNNII777N
     7:+++ONI7NN7N+++NN:O:O
     NO++N7NNN+:7777777+++N  OO
      +INOIIIN++77+++:::++ OO::
      NNNNN7N7+:+7O:+++7O O:::+
      N77N N7NNOO7+:OI77+O::+++
     N++7  777O  O::O7NN:::+++O"} dexmap

let dexmap = PokeDex.add "HORSEA" {
name="HORSEA";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"BUBBLE";"SMOKESCREEN";"LEER";"WATER GUN";"TWISTER";"AGILITY";"HYDRO PUMP";];
stats={max_hp=30; attack=40; defense=70; speed=60; sp_attack=70;sp_defense=25;};
poca_type=("WATER", "WATER");
ascii="


            ? ??
            O~~~~~O::
           OO~~N ?O
          N~~?????ONN
             N??NN:
            ,,,? 7+,,
          N~7,7?N+,,N
         ~N~~??N
           NO


                               "} dexmap

let dexmap = PokeDex.add "DRAGONAIR" {
name="DRAGONAIR";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DETECT";"REST";"ATTRACT";"SURF";"WATERFALL";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"WRAP";"LEER";"THUNDER WAVE";"TWISTER";"THUNDER WAVE";"TWISTER";"DRAGON RAGE";"SLAM";"AGILITY";"SAFEGUARD";"OUTRAGE";"HYPER BEAM";];
stats={max_hp=61; attack=84; defense=65; speed=70; sp_attack=70;sp_defense=70;};
poca_type=("DRAGON", "DRAGON");
ascii="           ==??? ::
          Z =???::
           ??7 77
           ==??87
              77
     8I     88 ?
   I~I        ??
    :         ?
   :8      Z :?
   :?8       ??      ======8  Z
    :?8   Z  ???8????==7==?   Z
      ????Z   ???8???7==??
           ::   :???????
           :::::       ::
             ::::::::          "} dexmap

let dexmap = PokeDex.add "VENUSAUR" {
name="VENUSAUR";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FLASH";"GROWL";"LEECH SEED";"VINE WHIP";"GROWL";"LEECH SEED";"VINE WHIP";"POISONPOWDER";"SLEEP POWDER";"RAZOR LEAF";"SWEET SCENT";"GROWTH";"SYNTHESIS";"SOLARBEAM";];
stats={max_hp=80; attack=82; defense=83; speed=80; sp_attack=100;sp_defense=100;};
poca_type=("GRASS", "POISON");
ascii="   7+:++8+++++88++++N+++::+8
  877 7++::+:N887++++++N7+77
  N7 777+++ 877788+++:++7N77
    877777N 877778877777:8
   8$$$N778$88878$88778$$$8
 ?$?8$$$$8$8$$$8$88$8$$$$$8??NN
??$N++88$$8$??8$++78N?8N???8??N
88? 77+$$$$??8N7+878NZZNZ?N?Z88
  8Z8++8?????Z77777ZZ7ZZZZZZZZ:
 77+8+Z8N8?ZZ7++887777N77ZZ7777
778+ +7+++77778  Z777ZZ77777787
Z77++++++7777777777ZZN7777777Z8
777778777777778ZZZN877+++++Z7
Z 7778NN888ZZZZZN  8+7++++N888+
 N N              888 +ZZ+8:+78"} dexmap

let dexmap = PokeDex.add "CHARMANDER" {
name="CHARMANDER";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"CUT";"STRENGTH";"FLAMETHROWER";"SCRATCH";"GROWL";"EMBER";"SMOKESCREEN";"RAGE";"SCARY FACE";"FLAMETHROWER";"SLASH";"DRAGON RAGE";"FIRE SPIN";];
stats={max_hp=39; attack=52; defense=43; speed=65; sp_attack=60;sp_defense=50;};
poca_type=("FIRE", "FIRE");
ascii="

           7??8
          ???7?N
          ??? 77
         8=7?787     I
        N887877???7  $?
        N77777777N   ??$
           8~~~?N     8
           ~~~~??    ?7
          ?8+++???777N
           77NN8778
          NN      N

                               "} dexmap

let dexmap = PokeDex.add "ARTICUNO" {
name="ARTICUNO";
learnable_moves=["ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"SWIFT";"DETECT";"REST";"FLY";"ICE BEAM";"POWDER SNOW";"MIST";"AGILITY";"MIND READER";"ICE BEAM";"REFLECT";"BLIZZARD";];
stats={max_hp=90; attack=85; defense=100; speed=85; sp_attack=95;sp_defense=125;};
poca_type=("ICE", "FLYING");
ascii=" D ~++O             ++++++DO~~
 ~~+I++     OO      ++++++~~
 D~+I++    $~O+$   DD++++~~~~D
  DD++      OD$$$$ ++++++~~~
   +++O+  8?D I~~O D++D
   IIDIID  +++ ~+DI++++~~D
     IIII,,++++D++++~~D
      I+,,,D+IIII+I+~ ~
      +,,~,~+D++~D~D~I
      +,~~~ IIDD+++I~DD
       ~~++O+++ O++++OO+$O
   O$$OD~ IDIII D$$O+$ DO $
 $D    $ II  IIOO$O +ODOOD$
 D      $8$O$8 +++++D$OOOO
 D      O? $O$ O$$$OO$$DOO     "} dexmap

let dexmap = PokeDex.add "MUK" {
name="MUK";
learnable_moves=["DYNAMICPUNCH";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"FIRE BLAST";"THUNDERPUNCH";"REST";"ATTRACT";"FIRE PUNCH";"FLAMETHROWER";"THUNDERBOLT";"POUND";"HARDEN";"HARDEN";"DISABLE";"SLUDGE";"MINIMIZE";"SCREECH";"ACID ARMOR";"SLUDGE BOMB";];
stats={max_hp=105; attack=105; defense=75; speed=50; sp_attack=65;sp_defense=100;};
poca_type=("POISON", "POISON");
ascii="                      Z+:::::=N
                   Z::=+===::==
                     N+:=+N+==7
            Z+==+++7Z 77N++N++N
          Z=77+==+++++  77+++77
        Z77+=+77  7777+7++777+=
       Z7++77+++++Z7+++77+++=7
        7ZNZZNNN==NN777++7777
      Z==N7NNNNNZZONN++++++N
   Z==777=NNN===ZZIIZ77+++++
  Z7777=N=NO=====+Z+++Z77Z7++7N
 Z7+7777+N=====++++++++=++77+++
7===++ N77++NN++77777=++++7NN
 =NN++  77777777++++++++NN
           7++7N               "} dexmap

let dexmap = PokeDex.add "NIDOQUEEN" {
name="NIDOQUEEN";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"SCRATCH";"DOUBLE KICK";"TAIL WHIP";"BODY SLAM";];
stats={max_hp=90; attack=82; defense=87; speed=76; sp_attack=75;sp_defense=85;};
poca_type=("POISON", "GROUND");
ascii="        I~~~I:??ZZ?IN
        ~I~?II???N?N
        ?O~~NIZ??IO
         Z~~~~~~IIIO
           OIIIIIIIIOO
   I~~~ONI??IIIIIIIIIIIIII??:N
   I O??IOIIOZ?????IZZIIOIII:
  NIIIIIINNZ?:::??Z::?ZNIIII
     NN  OII??~~N?~~~?N
   I  OOO????NN????INII
   ??~?O~~?IO:????IZZNII
~I?O????II?IIZ~~????ZIIIO II
 NIIIIIIIIIII?????NIIII   O~IO
    NNIOIOOINNN   IIIIII  O?~~O
      I????IN        NNN   O?~~"} dexmap

let dexmap = PokeDex.add "GOLDUCK" {
name="GOLDUCK";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"FURY CUTTER";"SURF";"STRENGTH";"FLASH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"TAIL WHIP";"DISABLE";"CONFUSION";"TAIL WHIP";"DISABLE";"CONFUSION";"SCREECH";"PSYCH UP";"FURY SWIPES";"HYDRO PUMP";];
stats={max_hp=80; attack=82; defense=78; speed=85; sp_attack=95;sp_defense=80;};
poca_type=("WATER", "WATER");
ascii="           I O+ ++
           I~+O++N
          N~~+++++N
          N++  II        O
       +IIOO=OIOO        +
   I+++O =NNNIII+~++++++++
   ,,ON     +++II+INN++OIO
     O      ~++++NIOI++II
           O++++IIIOI,OO
           ~IIIIO~+NOIO
         I~~+III+~~+N
          OIIOO   OII
        OO+II     NIIN
        :OIN      +I+=I
                  N O          "} dexmap

let dexmap = PokeDex.add "PINSIR" {
name="PINSIR";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"REST";"ATTRACT";"FURY CUTTER";"CUT";"STRENGTH";"FOCUS ENERGY";"BIND";"SEISMIC TOSS";"HARDEN";"GUILLOTINE";"SUBMISSION";"SWORDS DANCE";];
stats={max_hp=65; attack=125; defense=100; speed=85; sp_attack=55;sp_defense=70;};
poca_type=("BUG", "BUG");
ascii="        ~,,O     7,,,
        ,7+7O     ,~,O
        ,,+      O,,,O
       O~~+O:::+IO~~+
        O$++$$++++$+
       $ ++O  ++++$O+I
      O+ +++  ++++ +++$
      O$++++  ++++I$$$$
 7++II  I+++++++++$$ I7 7
I        IO$$$OO$$$   OI
       :+I$OOO$$+++
       ++O$ $$I +$+O
      7$$ $     $$$$
        ~       O $
                              7"} dexmap

let dexmap = PokeDex.add "GOLDEEN" {
name="GOLDEEN";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WATERFALL";"ICE BEAM";"PECK";"TAIL WHIP";"SUPERSONIC";"HORN ATTACK";"FLAIL";"FURY ATTACK";"WATERFALL";"HORN DRILL";"AGILITY";];
stats={max_hp=45; attack=67; defense=60; speed=63; sp_attack=35;sp_defense=50;};
poca_type=("WATER", "WATER");
ascii="

                Z
           I     ~   Z
      +  ::+ZN::II~ :
      ++N~~IZ N+8$:::I ,:
      I~ $8 ~IZ:8$$+:~~~  Z
    8I  $8:    Z$$8$$$I,::
     ++7 II  II$N$N N::: N
  I,I:7::::::Z  , :
  Z  Z  ::::: Z ,::
               N


                               "} dexmap

let dexmap = PokeDex.add "HYPNO" {
name="HYPNO";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"HYPNOSIS";"DISABLE";"CONFUSION";"DISABLE";"CONFUSION";"HEADBUTT";"POISON GAS";"MEDITATE";"PSYCHIC";"PSYCH UP";"FUTURE SIGHT";];
stats={max_hp=85; attack=73; defense=70; speed=67; sp_attack=73;sp_defense=115;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="           ~~~????7
          I~~~???Z   Z~Z
           ???????   77???
         O?~??????OZ ? O87
       ?Z:???O7?? +: 7??7
     ???Z    +++::+? ???
   Z???O  Z     :::?7ZZ
   ????    Z:::ZZ:  ZZZZ
   ????   ????????   ??
     ?  Z??????????
       O????7   ?????
        877O      7??
         777    7777
       ?Z????    ?Z?O
                               "} dexmap

let dexmap = PokeDex.add "MOLTRES" {
name="MOLTRES";
learnable_moves=["ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"SWIFT";"DETECT";"REST";"FLY";"FLAMETHROWER";"EMBER";"FIRE SPIN";"AGILITY";"ENDURE";"FLAMETHROWER";"SAFEGUARD";"SKY ATTACK";];
stats={max_hp=90; attack=100; defense=90; speed=90; sp_attack=125;sp_defense=85;};
poca_type=("FIRE", "FLYING");
ascii="OO             II +OOO
I            +OI==IIOO
O            I==IOOOO
OOI          =++IIIO  I   I+ II
=++        I=++==II    O O++IO=
=IIII O O   I++I+I     =+=OI~~=
 II=O+O    IIOOI  O IOI==~==
  OIO=OO    IOOOOI+=+=I~=O
  I==IIIOIOOOIOIII=I=II
I++II I =~~==IIIIO
I=I8=======IIIII
 88=== IIIIIIIII
 I$   $II8 O II
I8   O$ OOO   I$
    OOOOO     88               "} dexmap

let dexmap = PokeDex.add "WEEPINBELL" {
name="WEEPINBELL";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"VINE WHIP";"GROWTH";"WRAP";"GROWTH";"WRAP";"SLEEP POWDER";"POISONPOWDER";"STUN SPORE";"ACID";"SWEET SCENT";"RAZOR LEAF";"SLAM";];
stats={max_hp=65; attack=90; defense=50; speed=55; sp_attack=85;sp_defense=45;};
poca_type=("GRASS", "POISON");
ascii="             7OO
           +~+O+
   +++8  I,,~~~+
   I+++8$,,$~~~+O$++++$
   IIII ~~~77~+8++++$
   $II7 ~~7  +IIIII$
     $==$~~~+8IIII$
    O=OO==~+++$III
     ?O $O?++++
      ? O$OO+++
      ??  O?+O
       ?==?


                               "} dexmap

let dexmap = PokeDex.add "PONYTA" {
name="PONYTA";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"TACKLE";"GROWL";"TAIL WHIP";"EMBER";"STOMP";"FIRE SPIN";"TAKE DOWN";"AGILITY";"FIRE BLAST";];
stats={max_hp=50; attack=85; defense=55; speed=90; sp_attack=65;sp_defense=65;};
poca_type=("FIRE", "FIRE");
ascii="         7?77
        7===?77  7
       ,=?7Z,777
        77~~Z         7==7
       ?,, ~~7       ==777
       O~ O~~   77 77=7777
          O~~, 7,,~7777777
          O,,,,,,,,,    7777
          ,,,,,,,,,,~=
          ~~,,777Z~~~7?
           ? ,77ZZ ~~
           ? ,~  ?  ~
           ?  ~ I?  ~
           Z  ~    ~Z
                               "} dexmap

let dexmap = PokeDex.add "MEOWTH" {
name="MEOWTH";
learnable_moves=["HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"DREAM EATER";"DETECT";"REST";"ATTRACT";"NIGHTMARE";"THUNDERBOLT";"SCRATCH";"GROWL";"BITE";"PAY DAY";"SCREECH";"FURY SWIPES";"SLASH";];
stats={max_hp=40; attack=45; defense=35; speed=90; sp_attack=40;sp_defense=40;};
poca_type=("NORMAL", "NORMAL");
ascii="
           ZZ   ~
         N?Z7  ZNN7N
         NN,7 ?~??NN
        N~~,,,,,Z~?ZZ~N
       N~~~NZ~~ ,Z?NOZ?
           ??7?N~Z? $O$N
         Z~  ZZ?~~~Z N$N
        NNN?Z~~~NN?N $$
            ~~~??NZ~~N
            N????
           Z~   ??
        NNNN    NN$OO

                               "} dexmap

let dexmap = PokeDex.add "BLASTOISE" {
name="BLASTOISE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"TAIL WHIP";"BUBBLE";"WITHDRAW";"TAIL WHIP";"BUBBLE";"WITHDRAW";"WATER GUN";"BITE";"RAPID SPIN";"PROTECT";"RAIN DANCE";"SKULL BASH";"HYDRO PUMP";];
stats={max_hp=79; attack=83; defense=100; speed=78; sp_attack=85;sp_defense=105;};
poca_type=("WATER", "WATER");
ascii="   N?:8??????O?888
    ?????=?8???N  $$N8??
      :$$8: ????NN 8$8NNO?
 :?$$N???????~$N?    NN  :O
 N8N888N8?~~~~N?8??=$ O::NOO
    N8N88??88?O?8$===8:8NNN
        8???~~8$===??N:N88
        ??~~~??==$?8??N888
        $??~N: 8??8??N:N88
       88?8??~~N~$$????8:N
      N$$88??????N$?????N88
       88N888N$$$$$$????8
      ??88888?    $$N$$88
        ::N       $$$$$$N
                  O  : :N8  $$$"} dexmap

let dexmap = PokeDex.add "BUTTERFREE" {
name="BUTTERFREE";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"NIGHTMARE";"FLASH";"CONFUSION";"POISONPOWDER";"STUN SPORE";"SLEEP POWDER";"SUPERSONIC";"WHIRLWIND";"GUST";"PSYBEAM";"SAFEGUARD";];
stats={max_hp=60; attack=45; defense=50; speed=70; sp_attack=80;sp_defense=80;};
poca_type=("BUG", "FLYING");
ascii="
     8?..I           Z...8
    8.......        ...Z.Z8
    8...8.8..     8..888..8
    88Z.8...8.    .8..8..Z
     8.....8~8$O? I8~~...8
      ...?ZZZ$$IIZ~$8~?.8
      8?..~ZZI++IO$$ ~~?
       8...?Z~ ZZZZ ~~8
          ..ZII8Z8 ~8
        8.Z~Z Z8Z8~~~8
        8.Z~+I  I~~Z~8
         8.8+   ++ 88

                               "} dexmap

let dexmap = PokeDex.add "WEEDLE" {
name="WEEDLE";
learnable_moves=["POISON STING";"STRING SHOT";];
stats={max_hp=40; attack=35; defense=30; speed=50; sp_attack=20;sp_defense=20;};
poca_type=("BUG", "POISON");
ascii="


            ~IZ
           ~7???7
          8???N?7N
          III??77
           N7777?
            N7OIN
           87777   Z~
             IN77?77I
             NNION


                               "} dexmap

let dexmap = PokeDex.add "GRAVELER" {
name="GRAVELER";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"TACKLE";"DEFENSE CURL";"ROCK THROW";"DEFENSE CURL";"ROCK THROW";"MAGNITUDE";"SELFDESTRUCT";"HARDEN";"ROLLOUT";"EARTHQUAKE";"EXPLOSION";];
stats={max_hp=55; attack=95; defense=115; speed=35; sp_attack=45;sp_defense=45;};
poca_type=("ROCK", "GROUND");
ascii="
               8
           8$++8 +8$
  8II    8~8+++++~ ++     +
 $+ 8I   ++~++$~+++ +$ 8+888
  IIIII ++$+++  :+$+++$  I$ 8
   III8I+++8     ++++8$$$$
   88$II$8++8++++++ +I$8II$
       +$+8III+I8++II8
         +III+II8II I8
          8$8I$$I8$
         II$$     $III


                               "} dexmap

let dexmap = PokeDex.add "SEADRA" {
name="SEADRA";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"BUBBLE";"SMOKESCREEN";"LEER";"WATER GUN";"SMOKESCREEN";"LEER";"WATER GUN";"TWISTER";"AGILITY";"HYDRO PUMP";];
stats={max_hp=55; attack=65; defense=95; speed=85; sp_attack=95;sp_defense=45;};
poca_type=("WATER", "WATER");
ascii="
          ~   Z      +
        I~N~8Z+NN   ,N
        ~8~++$+~  I,,  ZZZ
       III~8II++ ++,,+Z+N
        ~~?IIII8++$II++
     $~~+II$I88IIIIII++
     8N$IN ++ZN8INNNNZ+++
      N    Z,+N+I8
            ,,+8ZIII
             ~~$++IIN
             ~8+I+IIN
              IIII8

                               "} dexmap

let dexmap = PokeDex.add "KINGLER" {
name="KINGLER";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"REST";"ATTRACT";"FURY CUTTER";"CUT";"SURF";"STRENGTH";"WHIRLPOOL";"ICE BEAM";"LEER";"VICEGRIP";"LEER";"VICEGRIP";"HARDEN";"STOMP";"GUILLOTINE";"PROTECT";"CRABHAMMER";];
stats={max_hp=55; attack=130; defense=115; speed=75; sp_attack=50;sp_defense=50;};
poca_type=("WATER", "WATER");
ascii="                    ~~I?I
                   ~~?8III
                  8??IIIIII
  I~??8           8IIIIIIIII
 ??IOO          8 8~I8888I??8
 IINI8   8? 8N 8I 8? I88OI??I
 I?II8  I 8?I?N?IN?N 8OON8II
 IIII   I??8?~?IIIIINION??IN
 N=O    O  ???8   II8??III:I
  =O =:N=??????IOII:ONI8II=O
   :O:N=:::::::::::==N=IION=
   =NNN OI======II==IN  O=  =
 OO=IN   N==NNNN===N     =N N==
OI=                      =OO
                          N =  "} dexmap

let dexmap = PokeDex.add "KABUTOPS" {
name="KABUTOPS";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"REST";"ATTRACT";"FURY CUTTER";"CUT";"SURF";"WHIRLPOOL";"ICE BEAM";"HARDEN";"ABSORB";"ABSORB";"LEER";"SAND ATTACK";"ENDURE";"SLASH";"MEGA DRAIN";"ANCIENTPOWER";];
stats={max_hp=60; attack=115; defense=105; speed=80; sp_attack=65;sp_defense=70;};
poca_type=("ROCK", "WATER");
ascii="     ZZ++ +  +8
    Z,,,  + IIIIIIII ++
    ,,    +$ZIIIII$IIII   Z
   ZZ,    +$+++++ IIIIZ  ZZ+
    +       III$,$$$    + +++
             $8  ++  I +   ,Z
                  O+ZZZI   ,+,
                8  ++$ZI    ,,
             8+$ZO +I$      Z
             $      I$8Z
              ZZ     Z  8Z
               8      $      ZZ
            , Z        I  ZZZ
                       $ Z+
                       Z+Z ZZZ+"} dexmap

let dexmap = PokeDex.add "ZAPDOS" {
name="ZAPDOS";
learnable_moves=["ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"SWIFT";"DETECT";"REST";"FLY";"FLASH";"THUNDERBOLT";"THUNDERSHOCK";"THUNDER WAVE";"AGILITY";"DETECT";"DRILL PECK";"LIGHT SCREEN";"THUNDER";];
stats={max_hp=90; attack=90; defense=85; speed=100; sp_attack=125;sp_defense=90;};
poca_type=("ELECTRIC", "FLYING");
ascii="        =   =
=   N   =8 8=             NN 8=
===N==N88=8=88N     $== N8====8
N=====NN8====8==N===========INN
 II====NN==N=========I===IIINNN
  NIII=III$8III===IIIIIIIINN
==IIIII88I$INIIIIIIIIIIII==IIII
 8IIIIIIIIIIIIIIIIIIIIIII8
   =III8NNNIIIIINNIIIIIIII
 IIN   N   NIII 7 N       NN
      ININ877I88$8N8
    N8$N$8INNIII$$II8N
        $$   8IIINN8=$
        N$    88I$I=N
                 =N 8          "} dexmap

let dexmap = PokeDex.add "DODUO" {
name="DODUO";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"FLY";"PECK";"GROWL";"PURSUIT";"FURY ATTACK";"TRI ATTACK";"RAGE";"DRILL PECK";"AGILITY";];
stats={max_hp=35; attack=85; defense=45; speed=75; sp_attack=35;sp_defense=35;};
poca_type=("NORMAL", "FLYING");
ascii="                  8++8  7
                 7+NNO::ON
                 IIIIN7
        ++I       7777N
      7IIIII8   8$
      7:ONN78N++NNII8
      :==77 8+NN77I7I
     ONON   7+IIIIII7
    N       N7II77778
              87778N
                7ON7N
               =  O=
            N $ NO:7N
                    N
                               "} dexmap

let dexmap = PokeDex.add "MAROWAK" {
name="MAROWAK";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"ICE BEAM";"TAIL WHIP";"BONE CLUB";"HEADBUTT";"TAIL WHIP";"BONE CLUB";"HEADBUTT";"LEER";"FOCUS ENERGY";"BONEMERANG";"RAGE";"FALSE SWIPE";"THRASH";"BONE RUSH";];
stats={max_hp=60; attack=80; defense=110; speed=45; sp_attack=50;sp_defense=80;};
poca_type=("GROUND", "GROUND");
ascii="   I O
  ,~ ,     OO
  ~~~~~,NIINI   ,,  ,
        N7I     ,,~N
          8,,,,,O,~~N
             ,,Z,,IN
             ~,, I777II+8
           ,O~O?777777II++
              7~~~7777NN N
             7I~~~~78+IN8N88
             III7?~77+I787N
              77      77N


                               "} dexmap

let dexmap = PokeDex.add "PRIMEAPE" {
name="PRIMEAPE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"THUNDERBOLT";"LEER";"LOW KICK";"RAGE";"LOW KICK";"KARATE CHOP";"FURY SWIPES";"FOCUS ENERGY";"RAGE";"SEISMIC TOSS";"CROSS CHOP";"SCREECH";"THRASH";];
stats={max_hp=65; attack=105; defense=60; speed=95; sp_attack=60;sp_defense=70;};
poca_type=("FIGHTING", "FIGHTING");
ascii="        7 O    O7.O
         .?  :O..?~
  =?7D   O:$~::::+~ ~O
 ??7777 OO:...:::~:::~O
 77  O77 ?:..:::~7?~~~~D
      D?:: :~:O~:::~~D??=?
        ::~++???::~~~ 7777
        O:D++D:::~~ D O77D
       O ~~~~~:~~~~~~ ~
        ??D~~~~~~~777D
          O  ~ ~   7?
          7          7O
      777             7?
                      ?D7
                               "} dexmap

let dexmap = PokeDex.add "AERODACTYL" {
name="AERODACTYL";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"DRAGONBREATH";"EARTHQUAKE";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"FLAMETHROWER";"AGILITY";"BITE";"SUPERSONIC";"ANCIENTPOWER";"SCARY FACE";"TAKE DOWN";"HYPER BEAM";];
stats={max_hp=80; attack=105; defense=65; speed=130; sp_attack=60;sp_defense=75;};
poca_type=("ROCK", "FLYING");
ascii=":Z:?=    ?Z Z==?     Z:=?7??8
77 ?:         ===   Z ??7???
 777=Z         Z==Z   ?7???8
 877 =          ==?? Z?7???
  777 Z          ????=7????
 8?777 ?      :Z ???=8787+?8
   887Z ?  Z ?:===Z?77777788
      8?Z =?::===?=7778
       ::O ??===?? 77
    ::=????O? ???????
    ==?? 7O ???????Z=Z
        Z++? ???   ???
        O+O?  ??    Z??      ??
       =  =Z              ???::
              ZZ       ???:::::"} dexmap

let dexmap = PokeDex.add "CLOYSTER" {
name="CLOYSTER";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"ICE BEAM";"SUPERSONIC";"AURORA BEAM";"PROTECT";"SPIKES";"SPIKE CANNON";];
stats={max_hp=50; attack=95; defense=180; speed=70; sp_attack=85;sp_defense=45;};
poca_type=("WATER", "ICE");
ascii="  8                 7~~+N
  ~+8     77 ~+8   +~~+N
   ~~+7  NN778~+8  N7+7
    ~777 ~O  ?8~++77N
       7+87N~???8~+887 ++8
      ~8777$N$$$?87+77777N
      8+7$$I?I$ ~?+7+++~~+N
      7+O?N I$~ ONN++++77N
      7~7~NO  ?ON~+++77777
   7~+~877~OOOOON++++8777N
       ++O~??NNN?788N7N77N
        8~77N?$N+~+77N
         8+8777N877NN++
         +7++77N87    N
         N  88                 "} dexmap

let dexmap = PokeDex.add "SLOWBRO" {
name="SLOWBRO";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"DREAM EATER";"REST";"ATTRACT";"FURY CUTTER";"NIGHTMARE";"SURF";"STRENGTH";"FLASH";"FLAMETHROWER";"ICE BEAM";"TACKLE";"GROWL";"WATER GUN";"GROWL";"WATER GUN";"CONFUSION";"DISABLE";"HEADBUTT";"WITHDRAW";"AMNESIA";"PSYCHIC";];
stats={max_hp=95; attack=75; defense=110; speed=30; sp_attack=100;sp_defense=80;};
poca_type=("WATER", "PSYCHIC");
ascii="       ??NNNNO==N
        =~~==?O?N
        ZZ=  ???     ZN?
      ,,,,,,~???  =  ZZ?NN
      N OONZ??Z?N N=?==ZN
       NN77O??????==?==N?
       ?=????==??N==?N???Z?
      N=O==??==???====?NZN
      ==?==?==?N??N=?  Z?N
      NONNNN???===?NN NN??
      ~N~~~~NN=~==??N?OO?Z
     N==Z~~??N?==???N?NNZ
      ????N???N????N??Z
       N??O    N?O?NN
        ?NN    OO? N           "} dexmap

let dexmap = PokeDex.add "ALAKAZAM" {
name="ALAKAZAM";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"KINESIS";"CONFUSION";"CONFUSION";"DISABLE";"PSYBEAM";"RECOVER";"FUTURE SIGHT";"PSYCHIC";"REFLECT";];
stats={max_hp=55; attack=50; defense=45; speed=120; sp_attack=135;sp_defense=85;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii=" :        +II    OIN     +=:N
==N       N+O++O++IN     OON
 NN+N   D?N,,,+++IID    NNOI+
 +I+N  N?NI++++++IN77N N7NN+
 NII:: NIIIO+++OIIIN7ON77NON
  OO77D+NOOI+OIINNOOON 77ON
   NOOON  NN+IIINON  NIOON
         N+ INOON+N
        O+N +77OIN++N  O,N
    O,OO++ OI++III ++++,N
   ,,,++I7IINNIIN+7ON+,,,N  NO
    NN  NOONINN   77OD N    N+O
       ZINIII     +++IN     N++
        N IN     NN++II     NI+
                   ++OIZN    N+"} dexmap

let dexmap = PokeDex.add "MEW" {
name="MEW";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"ROAR";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"DRAGONBREATH";"THUNDER";"EARTHQUAKE";"RETURN";"DIG";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"SANDSTORM";"FIRE BLAST";"SWIFT";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"FURY CUTTER";"NIGHTMARE";"CUT";"FLY";"SURF";"STRENGTH";"FLASH";"WHIRLPOOL";"WATERFALL";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"TRANSFORM";"MEGA PUNCH";"METRONOME";"PSYCHIC";"ANCIENTPOWER";];
stats={max_hp=100; attack=100; defense=100; speed=100; sp_attack=100;sp_defense=100;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="

                    :   O
       O   I      O=
       ,,:::O      =      I
      O:,~ ::      O      =
       ::I:==:=:   =     O
        O==::::   I    OO=
           :::::O   :,,I
           :=====
             IO  IO
              I  OIO


                              "} dexmap

let dexmap = PokeDex.add "SEAKING" {
name="SEAKING";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"WATERFALL";"ICE BEAM";"TAIL WHIP";"TAIL WHIP";"SUPERSONIC";"HORN ATTACK";"FLAIL";"FURY ATTACK";"WATERFALL";"HORN DRILL";"AGILITY";];
stats={max_hp=80; attack=92; defense=65; speed=68; sp_attack=65;sp_defense=80;};
poca_type=("WATER", "WATER");
ascii="                       II
              I,,,   I....Z
        ....,,,Z,I  Z..Z...
        I.I..,,,IZZ ..II..
        O..ZZZNNNN,N..I.,
   I   ++++++ZNINI$~~,,,N
    .:::+++++INNIN$$N,,,,
     Z::II.N.IINIINN$II,,,
     NIII$ZZZIINII$$N..IZ,Z
     ?Z?IIIIININ$$$$,,  N
      ....I$$$$$.,..NI,
     ,I,N,,I$$$N..,,N,,
     ZZ        Z.,,N N

                               "} dexmap

let dexmap = PokeDex.add "DEWGONG" {
name="DEWGONG";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"GROWL";"AURORA BEAM";"GROWL";"AURORA BEAM";"REST";"TAKE DOWN";"ICE BEAM";"SAFEGUARD";];
stats={max_hp=90; attack=70; defense=80; speed=70; sp_attack=70;sp_defense=95;};
poca_type=("WATER", "ICE");
ascii="                +,:,:
                +,,,+:
           ,:   I,,::::N
       Z, ,,,Z  :::::::N::
     Z,N,,,N:,:  I,,:    N,Z
     N+,,,,N,,:N   :     N,,
      NIZZZN::::         ,,,N
       NINN:::::N       ,,,,,
       ZZN::::::::   Z,,,,,,,
       ,,::::::::,:,,,,,,,,,N
      ,,,,,:::::Z:::,+,,,,,:
   I,,:N,,,,,:I,,I:,,N:::::N
  ZZ:::I,,,,,Z::,,,,,,,:::N
   Z::+,N::,::+::,+,,,,::N
          N:::::::::::N        "} dexmap

let dexmap = PokeDex.add "ZUBAT" {
name="ZUBAT";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"LEECH LIFE";"SUPERSONIC";"BITE";"CONFUSE RAY";"WING ATTACK";"MEAN LOOK";"HAZE";];
stats={max_hp=40; attack=45; defense=35; speed=55; sp_attack=30;sp_defense=40;};
poca_type=("POISON", "FLYING");
ascii="

           ::     NN:=ZZ
        :===    =ZIIIO
       :===:=   OIIII
      :=ZII::I ZOIZZZ
        I=ZI+O :IO
     II   =OI ZO
      OI:===IIZ=     II===
       =N NZ===IIINN
         :N=ZIIN  NIIZ



                               "} dexmap

let dexmap = PokeDex.add "SANDSHREW" {
name="SANDSHREW";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"SWIFT";"DEFENSE CURL";"DETECT";"REST";"ATTRACT";"FURY CUTTER";"CUT";"STRENGTH";"SCRATCH";"DEFENSE CURL";"SAND ATTACK";"POISON STING";"SLASH";"SWIFT";"FURY SWIPES";"SANDSTORM";];
stats={max_hp=50; attack=75; defense=85; speed=40; sp_attack=20;sp_defense=30;};
poca_type=("GROUND", "GROUND");
ascii="

         ZI$$???$
         Z$I?$IIN
         N ?$OO$II
         N,I,:~OI$N
         $INNN?I$II   ?
          N~: $INIIOO$I
         $?~::~OI$INIIN
          NIN~~N$$IIN
         O N    N?I
                 N


                               "} dexmap

let dexmap = PokeDex.add "RATICATE" {
name="RATICATE";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DIG";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"REST";"ATTRACT";"CUT";"STRENGTH";"THUNDERBOLT";"ICE BEAM";"TAIL WHIP";"QUICK ATTACK";"QUICK ATTACK";"HYPER FANG";"SCARY FACE";"PURSUIT";"SUPER FANG";];
stats={max_hp=55; attack=81; defense=60; speed=97; sp_attack=50;sp_defense=70;};
poca_type=("NORMAL", "NORMAL");
ascii="                  I~~~I
                      Z~
       $  $$I$  88      ~Z
       $$????IINZ$       ~
       I:?I$$IIZZIIII    IZ
     N:  =::7NN$IIIII8   ZZ
     ZZN NN:7INNIIIII8   ZN
     7=7 NN:::::$8II$$N ZZ
       N  =:==IZII$$$$$IIN
      ZZZN===~ZNN$$$$$$Z
           =======7$$$$
             ======7$N
           ZIIIN   N~IZZ
                    N N
                               "} dexmap

let dexmap = PokeDex.add "RATTATA" {
name="RATTATA";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DIG";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DEFENSE CURL";"REST";"ATTRACT";"TACKLE";"TAIL WHIP";"QUICK ATTACK";"HYPER FANG";"FOCUS ENERGY";"PURSUIT";"SUPER FANG";];
stats={max_hp=30; attack=56; defense=35; speed=72; sp_attack=25;sp_defense=35;};
poca_type=("NORMAL", "NORMAL");
ascii="                  ~~7
                  ~+78
                     +
                     +
        7~7   +~     N
         =~~~~7=+ 7 7
        7+++8+++N++++
        +7+::?$:::++7
         ~ N8:?7~8877N
         77?$N ~~   ?$
              :?



                               "} dexmap

let dexmap = PokeDex.add "MACHOP" {
name="MACHOP";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"LOW KICK";"LEER";"FOCUS ENERGY";"KARATE CHOP";"SEISMIC TOSS";"FORESIGHT";"VITAL THROW";"CROSS CHOP";"SCARY FACE";"SUBMISSION";];
stats={max_hp=70; attack=80; defense=50; speed=35; sp_attack=35;sp_defense=35;};
poca_type=("FIGHTING", "FIGHTING");
ascii="              OO
            O~I~I
            +II===
           $$~~8O=
       ~~~O~$$~=$=  $~$
     ~~=$=???++I$???===~~
      ?O   OO?====    O?
            ==????
           ====?O?
           ?====??
         O=??????$$O
        ==??      $$
       ===?       O$$

                               "} dexmap

let dexmap = PokeDex.add "FARFETCHD" {
name="FARFETCHD";
learnable_moves=["HEADBUTT";"TOXIC";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"CUT";"FLY";"SAND ATTACK";"LEER";"FURY ATTACK";"SWORDS DANCE";"AGILITY";"SLASH";"FALSE SWIPE";];
stats={max_hp=52; attack=65; defense=55; speed=60; sp_attack=58;sp_defense=62;};
poca_type=("NORMAL", "FLYING");
ascii="
             Z
        Z  8IIZ  888
       Z:8  NIZZ NN7
      :8=I IN88ZN 77N ZI
      8:Z=ZN~ZN:Z 8~NI:8
      ::Z$+++8$ZZZ=~~=N
      N====NN::I::=N~Z8
       8===:::::==IIZZ
           :::::Z=N8I8
            8=====NNN8
           $+$  $N   :
            +  ~~+N
                +
                               "} dexmap

let dexmap = PokeDex.add "EKANS" {
name="EKANS";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"STRENGTH";"WRAP";"LEER";"POISON STING";"BITE";"GLARE";"SCREECH";"ACID";"HAZE";];
stats={max_hp=35; attack=60; defense=44; speed=55; sp_attack=40;sp_defense=54;};
poca_type=("POISON", "POISON");
ascii="
                     7O
           +~~+8     7+
          ~~~O~+8   ~+
        +~~+++++7 ~~8
           NZZN+7N++
           888+7+NN7ZN
             8~:~N NZZZ
        +~+++++++    778
       +~++8~++~NZ77878
       ++++++~~~OZZ77+
        +++++++


                               "} dexmap

let dexmap = PokeDex.add "EXEGGCUTE" {
name="EXEGGCUTE";
learnable_moves=["ROLLOUT";"TOXIC";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"STRENGTH";"FLASH";"BARRAGE";"HYPNOSIS";"REFLECT";"LEECH SEED";"CONFUSION";"STUN SPORE";"POISONPOWDER";"SLEEP POWDER";"SOLARBEAM";];
stats={max_hp=60; attack=40; defense=80; speed=40; sp_attack=60;sp_defense=45;};
poca_type=("GRASS", "PSYCHIC");
ascii="

                  ZZ
        Z::~?N  :N=INN?:?
        ,:ZZ:Z:::NZ::,?:::
        Z::?:,,:::?::::::?N
       ?::~::N::: ZNZ::ZZ?N
      :,:Z:?:::::?,::Z:??Z
     :::  :?N:::::ZZZ:::N
    Z:::::~?N?????::?::??
      ?????N  NNZ ~~????N
                    NNN


                               "} dexmap

let dexmap = PokeDex.add "VOLTORB" {
name="VOLTORB";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"FLASH";"THUNDERBOLT";"TACKLE";"SCREECH";"SONICBOOM";"SELFDESTRUCT";"ROLLOUT";"LIGHT SCREEN";"SWIFT";"EXPLOSION";"MIRROR COAT";];
stats={max_hp=40; attack=30; defense=50; speed=100; sp_attack=55;sp_defense=55;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="


             8$7$N
           77777777$
          7?~77777777
         87777777777$N
         8777778 $77$N
          $ 777$77$==
           :   :====
             N===N



                               "} dexmap

let dexmap = PokeDex.add "SNORLAX" {
name="SNORLAX";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"EARTHQUAKE";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"REST";"ATTRACT";"FIRE PUNCH";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"AMNESIA";"DEFENSE CURL";"HEADBUTT";"SNORE";"REST";"BODY SLAM";"ROLLOUT";"HYPER BEAM";];
stats={max_hp=160; attack=110; defense=65; speed=30; sp_attack=65;sp_defense=110;};
poca_type=("NORMAL", "NORMAL");
ascii="           III?IIZZZZ
           Z:ZIZ:::ZZZ
           :::::  ::DZZ   ID
           :::::~:::DZD IIIZ
      IIID Z:::::::ZZZZZIZZZ
      ZZIIZZ :~~~:::DZZZZZZ
       ZZZ :::::::::::ZZZZ
        Z :::::::::::::ZZZZ
         ::::::::::::::ZDDDD
        :::::::::::::::~DDDD
        ~::::::::::::~ ~D DD
     :O  ~~:::::::~~~  ~~~
    :~~::~~~~~~~~~~~:::~~~~
     7O~~~ ~~~~~~~~ :~~77~~D
      7O~~D  ~~~::~~:~777~     "} dexmap

let dexmap = PokeDex.add "JOLTEON" {
name="JOLTEON";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLASH";"THUNDERBOLT";"TAIL WHIP";"SAND ATTACK";"THUNDERSHOCK";"QUICK ATTACK";"DOUBLE KICK";"PIN MISSILE";"THUNDER WAVE";"AGILITY";"THUNDER";];
stats={max_hp=65; attack=65; defense=60; speed=130; sp_attack=110;sp_defense=95;};
poca_type=("ELECTRIC", "ELECTRIC");
ascii="
         8?
        8??    7:
         ==8=  O?
        =::==?      :  =
        ==8O=? Z  Z=?::?
        ?88?? ~~  =====::?
         ~ ~~~ ~~ ====?
         ~     ?Z? ?=Z=
         ~        ZZ ==
            ? ??  Z   ?
           :? ==     =
              ?

                               "} dexmap

let dexmap = PokeDex.add "STARYU" {
name="STARYU";
learnable_moves=["TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"REST";"ATTRACT";"SURF";"FLASH";"WHIRLPOOL";"WATERFALL";"THUNDERBOLT";"ICE BEAM";"TACKLE";"HARDEN";"WATER GUN";"RAPID SPIN";"RECOVER";"SWIFT";"BUBBLEBEAM";"MINIMIZE";"LIGHT SCREEN";"HYDRO PUMP";];
stats={max_hp=30; attack=45; defense=55; speed=85; sp_attack=70;sp_defense=55;};
poca_type=("WATER", "WATER");
ascii="
                 +
               Z+$
        Z++Z $$?$$O
         O?ZOI:I+:I
           ++O :O$+ ?ZOZ
           IIO77OI+$$Z
          Z :I$$ II
         ??  III+ Z$
        ?$$  $I$?Z$
                ??$
                 $$


                               "} dexmap

let dexmap = PokeDex.add "WIGGLYTUFF" {
name="WIGGLYTUFF";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"DISABLE";"DEFENSE CURL";"DOUBLESLAP";];
stats={max_hp=140; attack=70; defense=45; speed=45; sp_attack=75;sp_defense=50;};
poca_type=("NORMAL", "NORMAL");
ascii="       N 7            ON
        , +   I     ~NN
        IONN~Z~~  N~NON
         IOZ~~~+Z~~NNN
          NIZ++ZII~ZN
            O~~IO  ~~
       Z~ZI I  ~, I~Z~~
        ~~~  $$$ ,~~~++
         ~~        ~~+N
         ~          +++
          ,        ,++N
           ,,,,,,,,,+N
           Z+N,,,ZN+N
          N~+    Z~+
                               "} dexmap

let dexmap = PokeDex.add "HITMONLEE" {
name="HITMONLEE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"STRENGTH";"MEDITATE";"ROLLING KICK";"JUMP KICK";"FOCUS ENERGY";"HI JUMP KICK";"MIND READER";"FORESIGHT";"ENDURE";"MEGA KICK";"REVERSAL";];
stats={max_hp=50; attack=120; defense=53; speed=87; sp_attack=35;sp_defense=110;};
poca_type=("FIGHTING", "FIGHTING");
ascii="   I::++D
   I:+I:
   DIII?:      Z~~~~~+8
       D?OO  I8D+~~+~++D
         O?OOI+$D+$:$$+I
          D??D+++++++I++8
         DO?OO++8~8+8OOOZ+
        DO DII+++8+8IZDO?8$
       8O    III++ID$ $  $:D
       8II    IIIID$  :$$ :D $$
               D:O $  :$  :D$:D
               OOD$  :$  ::$ :D
             DD?O 8DII88 :$  :D
             ++8I8I+++++I8D :$
              +$$:+++++++++8:D "} dexmap

let dexmap = PokeDex.add "PARASECT" {
name="PARASECT";
learnable_moves=["TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"FURY CUTTER";"CUT";"FLASH";"STUN SPORE";"POISONPOWDER";"STUN SPORE";"POISONPOWDER";"LEECH LIFE";"SPORE";"SLASH";"GROWTH";"GIGA DRAIN";];
stats={max_hp=60; attack=95; defense=80; speed=30; sp_attack=60;sp_defense=80;};
poca_type=("BUG", "GRASS");
ascii="              7???77D
             77??7777
            $=77777777
           $7777777$$$D
          D7=?77777$$$$
        ?==77777?77$$?$D
       7??77===?7777$$$$?
      ?7$$??777777=77$$$$$
    $?77$N$D$$$$$$D$$$$$$N
    77$$$$N?NN.?D??$$DND$
   D7$$$D D DNNN7?$$$N$D $
   D7N $   N    7?$$$ ND D
                D7$D N$
                 7N
                               "} dexmap

let dexmap = PokeDex.add "LICKITUNG" {
name="LICKITUNG";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"EARTHQUAKE";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"CUT";"SURF";"STRENGTH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"SUPERSONIC";"DEFENSE CURL";"STOMP";"WRAP";"DISABLE";"SLAM";"SCREECH";];
stats={max_hp=90; attack=55; defense=75; speed=30; sp_attack=60;sp_defense=75;};
poca_type=("NORMAL", "NORMAL");
ascii="
          7::~~~
         8~~~~N8~N   777
        ?~~~?~~~??7::::~~~
        N?888N8???:::~~?~~8
     ~~~???$$$N??8:::~?~8??
    NNNO?$??N??=??=~~O~~???
      O????$====???NNN~???8
      ?????N=,,~~~~?~~~???
     ??$?????~~,~~~~~N??N?8
    N?????$==,,~N:,,~~?NN??
    N=??==N???==?,~~=?N
      O$ON77N777N?????
        ~~~7N    8 8?N
                               "} dexmap

let dexmap = PokeDex.add "SEEL" {
name="SEEL";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"HEADBUTT";"GROWL";"AURORA BEAM";"REST";"TAKE DOWN";"ICE BEAM";"SAFEGUARD";];
stats={max_hp=65; attack=45; defense=55; speed=45; sp_attack=45;sp_defense=70;};
poca_type=("WATER", "WATER");
ascii="

            Z:
          Z,,,,,:
         +N,,, N,:
        Z::OI::=,:  ++,:
         ZOO~Z =N+N N:,+,,,:Z
          ~~~IIN:::    ,:::+Z
           ,::::::::ZN++  NN
          ,,,,,::::::++N
        +:,,,,,,::::Z++
      Z,,::,,,:::Z,,,,,,N
        N    N:::+NN:::Z

                               "} dexmap

let dexmap = PokeDex.add "SCYTHER" {
name="SCYTHER";
learnable_moves=["HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FURY CUTTER";"CUT";"QUICK ATTACK";"LEER";"FOCUS ENERGY";"PURSUIT";"FALSE SWIPE";"AGILITY";"WING ATTACK";"SLASH";"SWORDS DANCE";"DOUBLE TEAM";];
stats={max_hp=70; attack=110; defense=80; speed=105; sp_attack=55;sp_defense=80;};
poca_type=("BUG", "FLYING");
ascii="             87N
             7,,     =?7
            8,,~~ 8=,,7
            ?~~N~?~~~N~
         8 NN~~~?7~~~N
         ==??~$887~~N
       88=?$?$N$??$$8N
      =:8??8 ?N???$8N8=
      ?=8???$8N???N~==N
     ==7     $$ $  ???
     =7    :$?7 N    ??
      7   N=? =      8=?
        8? == 77     8??$
        ?  7          8:8N
        77                     "} dexmap

let dexmap = PokeDex.add "MAGMAR" {
name="MAGMAR";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"THUNDERPUNCH";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"LEER";"SMOG";"FIRE PUNCH";"LEER";"SMOG";"FIRE PUNCH";"SMOKESCREEN";"SUNNY DAY";"FLAMETHROWER";"CONFUSE RAY";"FIRE BLAST";];
stats={max_hp=65; attack=95; defense=57; speed=93; sp_attack=100;sp_defense=85;};
poca_type=("FIRE", "FIRE");
ascii="           == Z?=Z
           == ===Z
   $~88  877Z777     Z7Z
    77     8ZZZ7Z 7 ZZ
      Z7 8++::8Z Z87Z8Z  ===
      78Z8?8:$  ==Z7Z    ===
        7 =87ZZ ?? Z    Z7==
          ?77777 ?ZZ 78  Z77
           ==7?=ZZZ Z    88
         Z,=====7=,==Z Z=?
         7=?7????==?? ??7
               77Z??Z7Z
        Z777Z     Z88
         8ZZ8     Z777
                    $ $        "} dexmap

let dexmap = PokeDex.add "GENGAR" {
name="GENGAR";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"THUNDERBOLT";"LICK";"SPITE";"SPITE";"MEAN LOOK";"NIGHT SHADE";"CONFUSE RAY";"DREAM EATER";"DESTINY BOND";];
stats={max_hp=60; attack=65; defense=60; speed=110; sp_attack=130;sp_defense=75;};
poca_type=("GHOST", "POISON");
ascii="               8    +?N
     $   $ 8 $?8$ ++?$
     8?++8+???????+?IN
      8??++++??????$$
   +88 8++++??????I$$NN+8?N
   ????88????+??$?I$$???+N
    8$$?$=???$==?8?$$??$
      $?8??????8.N?$$$N
       8?$......N??$$$$
        ???888????$$$$$8
        NI??????I$$$$$$$$
        $$$$$$$$$$??+?N
         ??IN    8????N
         NN       8??$
                               "} dexmap

let dexmap = PokeDex.add "GEODUDE" {
name="GEODUDE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"EARTHQUAKE";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"REST";"ATTRACT";"FIRE PUNCH";"STRENGTH";"FLAMETHROWER";"TACKLE";"DEFENSE CURL";"ROCK THROW";"MAGNITUDE";"SELFDESTRUCT";"HARDEN";"ROLLOUT";"EARTHQUAKE";"EXPLOSION";];
stats={max_hp=40; attack=80; defense=100; speed=20; sp_attack=30;sp_defense=30;};
poca_type=("ROCK", "GROUND");
ascii="



            $~++$+?+
      ~+++  +N??N:8?$8+++~
     ~$+?? +++++++???+?++$~
     +?N?N N$+++?????N?N8?+8
      8++????????$??N???+?
          N8          8+N




                               "} dexmap

let dexmap = PokeDex.add "PIDGEOTTO" {
name="PIDGEOTTO";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DETECT";"REST";"ATTRACT";"FLY";"TACKLE";"SAND ATTACK";"GUST";"SAND ATTACK";"GUST";"QUICK ATTACK";"WHIRLWIND";"WING ATTACK";"AGILITY";"MIRROR MOVE";];
stats={max_hp=63; attack=60; defense=55; speed=71; sp_attack=50;sp_defense=50;};
poca_type=("NORMAL", "FLYING");
ascii="I++++I             ZI:::::N
 Z+++ZIZ           IZ:ZZ:N::
+++++Z+ZI         ID:::::::
 Z++++D++I$IOOO   D::I:::Z
   +++++$====N   I+::Z+::::Z
  NZZ+++OII:NII DI:::Z+::Z
   Z++Z+=O=::NIII++:ID:D::Z
      +++O=:+IIII++ZZI:: N
      N ++ZD+:II:++++:D
        I++::::::I
        I+D::::::ZN
    7O   Z::::: NZ
      N==NN+Z++:+N$
        N Z+++N:$OO$
           I+$D+$O+$O          "} dexmap

let dexmap = PokeDex.add "GLOOM" {
name="GLOOM";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";];
stats={max_hp=60; attack=65; defense=70; speed=40; sp_attack=85;sp_defense=75;};
poca_type=("GRASS", "POISON");
ascii="
               DN
           $$DOOOD$D
         D$I$D$$N$$$O  7
          O+OII$$OO+O  7N
      +7777NDO$$ODDN777
    O7O ++77N$NN$O77+
    O7 O77 INIIINI$N+7
      N N D$????$D$$ 7N
         DNIII,,IID$ O
        DN N$$$$$$N
           DD$  NN
          NN     N$IN

                               "} dexmap

let dexmap = PokeDex.add "TENTACOOL" {
name="TENTACOOL";
learnable_moves=["TOXIC";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"SURF";"WHIRLPOOL";"ICE BEAM";"POISON STING";"SUPERSONIC";"CONSTRICT";"ACID";"BUBBLEBEAM";"WRAP";"BARRIER";"SCREECH";"HYDRO PUMP";];
stats={max_hp=40; attack=40; defense=35; speed=70; sp_attack=50;sp_defense=100;};
poca_type=("WATER", "POISON");
ascii="           I++IZ
          Z+++~ZZZ
        I:+~~~  :ZZD
        ZZ+~~+~ZZZZI
        ZZ++I+Z~ZII
          +DZ+++IZ
           +++Z+IIII
            ZI ::IIII++
         ++ I+I+  O
           O  Z      ?
       O?               ?O
      ?                 ?=
      $?             ?==O
      ==             ?
                               "} dexmap

let dexmap = PokeDex.add "JIGGLYPUFF" {
name="JIGGLYPUFF";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"SING";"DEFENSE CURL";"POUND";"DISABLE";"ROLLOUT";"DOUBLESLAP";"REST";"BODY SLAM";"DOUBLE EDGE";];
stats={max_hp=115; attack=45; defense=20; speed=20; sp_attack=45;sp_defense=25;};
poca_type=("NORMAL", "NORMAL");
ascii="

                     O
             :::~~~:ZNN
         ~N~O:~~~~~~~~
          ~::~~~?O7,~~
             ?~~?77,~?N
           ??~~~~~~~~~N
         ?:?~~~~~~???NN
            O???????N
           O??    ??~



                               "} dexmap

let dexmap = PokeDex.add "MAGIKARP" {
name="MAGIKARP";
learnable_moves=["SPLASH";"TACKLE";"FLAIL";];
stats={max_hp=20; attack=10; defense=55; speed=80; sp_attack=15;sp_defense=20;};
poca_type=("WATER", "WATER");
ascii="           :        $
        :$$:++     7Z
         +++++    $
         O++$$O77 Z  Z
        $++777OO+Z Z
        +7$ :7+Z::$O:?
       ++77   7?  O$ OOZ
       $,O7:7777
       $  +77:7$$O$
        O$O $$:O$
        $    $+++++
         $   :$++ $
          :
             :
                               "} dexmap

let dexmap = PokeDex.add "JYNX" {
name="JYNX";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"PSYCH UP";"HIDDEN POWER";"SWEET SCENT";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DREAM EATER";"REST";"ATTRACT";"NIGHTMARE";"ICE BEAM";"LICK";"LOVELY KISS";"POWDER SNOW";"LOVELY KISS";"POWDER SNOW";"DOUBLESLAP";"ICE PUNCH";"MEAN LOOK";"BODY SLAM";"PERISH SONG";"BLIZZARD";];
stats={max_hp=65; attack=50; defense=35; speed=95; sp_attack=115;sp_defense=95;};
poca_type=("ICE", "PSYCHIC");
ascii="          ,=?==,,,?
         ,,?N??Z,,,=     N
        =,N$++~+N,=?= NNN+
        ==N~Z+III=Z=ZZ $I+
   $N N ?=NZ7+IZZN?Z?  ~
   $N$  =??Z=ZZ+INZZ?$~
    NN  N??II??IZ?????
       ~ N???777?NNZNZ
          NN7II777NN77N
        ZIII7I+7777I77ZII
        Z+++++Z7III7I777IN
     IIIIIZ+++Z77IIIIII77N
       N7ZIIIIIZ77III7N7N
           NNN    NNN
                               "} dexmap

let dexmap = PokeDex.add "KAKUNA" {
name="KAKUNA";
learnable_moves=["HARDEN";"HARDEN";];
stats={max_hp=45; attack=25; defense=50; speed=35; sp_attack=25;sp_defense=25;};
poca_type=("BUG", "POISON");
ascii="

             7++Z
           +,,,++7D
           7+++$N+7
           O++ZZ7N
           777D77ZN
           ,Z7O++7N
           ++77+Z7
            D77D77
            D+7OD
             D7D


                               "} dexmap

let dexmap = PokeDex.add "NINETALES" {
name="NINETALES";
learnable_moves=["HEADBUTT";"ROAR";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"QUICK ATTACK";"CONFUSE RAY";"SAFEGUARD";"FIRE SPIN";];
stats={max_hp=73; attack=76; defense=75; speed=100; sp_attack=81;sp_defense=100;};
poca_type=("FIRE", "FIRE");
ascii="      ~~~~~~Z~~~Z    ~N~~~~++Z
     N~~~~~~~~~~~Z NN+N++~++N++
    N~~~~~~~~+++++Z N~~ZNN?+?Z
   Z~~~Z+++++++++N~~~++++  NZ
  Z~~~~~~Z+++Z++++Z+++++++
  ~~~~~~~+Z+++++++++ZN~+++N
  ++++~~++++++++++++++~~~++
   +Z++++++??++?+++++~~~~~+
    +++++++Z???ZZ?+??+++~+Z
  ~~~~~~Z??????????~~N?++?N
 +~~~~~~++?Z??????+~Z~ZN?+
 ++++~~~~~~+?ZZN++++?+ZNNN
 N+N~~~~~~Z~~+Z++NNNN~+INNII
  NN~~~~~Z~~~~++++~~++NN+N
    +~~~++~~~++++Z+N ??N+Z     "} dexmap

let dexmap = PokeDex.add "WEEZING" {
name="WEEZING";
learnable_moves=["ROLLOUT";"TOXIC";"ZAP CANNON";"HIDDEN POWER";"SUNNY DAY";"SNORE";"HYPER BEAM";"PROTECT";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"FIRE BLAST";"REST";"ATTRACT";"FLAMETHROWER";"THUNDERBOLT";"TACKLE";"SMOG";"SELFDESTRUCT";"SMOG";"SELFDESTRUCT";"SLUDGE";"SMOKESCREEN";"HAZE";"EXPLOSION";"DESTINY BOND";];
stats={max_hp=65; attack=90; defense=120; speed=60; sp_attack=85;sp_defense=70;};
poca_type=("POISON", "POISON");
ascii=" ::I::=I     =? I I =::==:=
 ::=:::=   I==?Z     ====:=I
 ==:====I  ==???Z     I=I
   ::=I    =I?IIIZ ?~==??N
             ?N ZN~~~~~~==
         I======II~~~~=~==ZZ
 ::I=  Z~~~~~N==Z~~~~Z:~=??  ==
 ::==I==~~~~~===N=~~Z =Z??? =::
  ==  N=~~~=====IN===Z?+?=  ===
      ?====~~~=???=Z???N
     Z~~N?===  I=?IZI   II:::=I
      N=NZ==Z:: N?ZII  :::::==
       Z NOZ?==N??III I====:=
        ????++=??I      ====I
             NII               "} dexmap

let dexmap = PokeDex.add "VICTREEBEL" {
name="VICTREEBEL";
learnable_moves=["TOXIC";"HIDDEN POWER";"SUNNY DAY";"SWEET SCENT";"SNORE";"HYPER BEAM";"PROTECT";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"SOLARBEAM";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SLUDGE BOMB";"REST";"ATTRACT";"CUT";"FLASH";"SLEEP POWDER";"SWEET SCENT";"RAZOR LEAF";];
stats={max_hp=80; attack=105; defense=65; speed=70; sp_attack=100;sp_defense=60;};
poca_type=("GRASS", "POISON");
ascii="         87??????77 O
           7???778   O
          8$8     $  7
        78?  OOOO8$   7
      ??? ??8  ~??   77
     ?7?77 ~O888O+  O
    8?8777O++++O++7???77888
     7777=::::+++ 7????77
      77:?:::::+87????77
       +::??:?7+777?777
       +++7+++++877777      887
        ++++++++          88???
       O                 877777
      7                   8  87
       7+::7                   "} dexmap

let dexmap = PokeDex.add "WARTORTLE" {
name="WARTORTLE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"TACKLE";"TAIL WHIP";"BUBBLE";"TAIL WHIP";"BUBBLE";"WITHDRAW";"WATER GUN";"BITE";"RAPID SPIN";"PROTECT";"RAIN DANCE";"SKULL BASH";"HYDRO PUMP";];
stats={max_hp=59; attack=63; defense=80; speed=58; sp_attack=65;sp_defense=80;};
poca_type=("WATER", "WATER");
ascii="       =~        = O
       OIN       =~
       O~~ OON  ,,~
        O:====I,,,
        =======~~N     , =
        ~N=ION~ION   = = =O
        =====IIIII7  = ~,,
        OOOOIIOI====O  ,~,O
     ~~IIN=O8==IIIOOIN,=I  O
     NNNNN======IIO77,,,,  N
          =IIII=II~ON,~,,,N
         :N=====O:==N~~~~
        O:=INIII=:=II~O
         IIIN   ONIIIN
         N N      N==N         "} dexmap

let dexmap = PokeDex.add "SQUIRTLE" {
name="SQUIRTLE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"DEFENSE CURL";"REST";"ATTRACT";"SURF";"STRENGTH";"WHIRLPOOL";"WATERFALL";"ICE BEAM";"TACKLE";"TAIL WHIP";"BUBBLE";"WITHDRAW";"WATER GUN";"BITE";"RAPID SPIN";"PROTECT";"RAIN DANCE";"SKULL BASH";"HYDRO PUMP";];
stats={max_hp=44; attack=48; defense=65; speed=43; sp_attack=50;sp_defense=64;};
poca_type=("WATER", "WATER");
ascii="

           I::=$
          $==I==$
          8==N8$I
          $===IIN $
        ===$IIN7==N
         $I7~77$II   $
           :+:~~D:NI=$=
          I:+:~7I$NINII
         $=I++7$==NN
         $IIN   III


                               "} dexmap

let dexmap = PokeDex.add "OMANYTE" {
name="OMANYTE";
learnable_moves=["HEADBUTT";"ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"REST";"ATTRACT";"SURF";"WHIRLPOOL";"ICE BEAM";"CONSTRICT";"WITHDRAW";"BITE";"WATER GUN";"LEER";"PROTECT";"ANCIENTPOWER";"HYDRO PUMP";];
stats={max_hp=35; attack=40; defense=100; speed=35; sp_attack=90;sp_defense=55;};
poca_type=("ROCK", "WATER");
ascii="


             ,,,,~I+O
            ,++I~+ IOI
           I++III++OO O
           ,+IIIO++IO I
        Z7 ~+~~+I+=O O
         ==~   ~  III
          I===IIII7ZI
          = =III I



                               "} dexmap

let dexmap = PokeDex.add "PORYGON" {
name="PORYGON";
learnable_moves=["TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"THUNDER";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SWIFT";"DREAM EATER";"REST";"NIGHTMARE";"FLASH";"THUNDERBOLT";"ICE BEAM";"CONVERSION2";"TACKLE";"CONVERSION";"AGILITY";"PSYBEAM";"RECOVER";"SHARPEN";"LOCK ON";"TRI ATTACK";"ZAP CANNON";];
stats={max_hp=65; attack=60; defense=70; speed=40; sp_attack=85;sp_defense=75;};
poca_type=("NORMAL", "NORMAL");
ascii="

           7:::7
           ==::??   O$
         O===   7  O+
         :===?~7 7O+$
        ~~~~I777????$
        ~O~I$$$7??7O
           $+I?7III$
           OO7~~~OO$$
             ~~~$$$$
              O$


                               "} dexmap

let dexmap = PokeDex.add "DROWZEE" {
name="DROWZEE";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"POUND";"HYPNOSIS";"DISABLE";"CONFUSION";"HEADBUTT";"POISON GAS";"MEDITATE";"PSYCHIC";"PSYCH UP";"FUTURE SIGHT";];
stats={max_hp=60; attack=48; defense=45; speed=42; sp_attack=43;sp_defense=90;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="           ?? $$$ $$O
      I?O  O~~???O8ZZ
       ???????????Z??
        ?????$  $?????8
         O?????????????
         O? I77?????????
           $? ?O?????????
           ???? OI ?I???Z8
           IIIII?IZZZZZZZ
         8?IIIIIII8??IIZZ
          II IIIZZIIIIIZZ
            ZZZ    ZZZZZ
          Z?Z       Z8 Z
                     ??
                               "} dexmap

let dexmap = PokeDex.add "KABUTO" {
name="KABUTO";
learnable_moves=["ROLLOUT";"TOXIC";"ROCK SMASH";"HIDDEN POWER";"SNORE";"BLIZZARD";"ICY WIND";"PROTECT";"RAIN DANCE";"GIGA DRAIN";"ENDURE";"FRUSTRATION";"RETURN";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"REST";"ATTRACT";"ICE BEAM";"SCRATCH";"HARDEN";"ABSORB";"LEER";"SAND ATTACK";"ENDURE";"MEGA DRAIN";"ANCIENTPOWER";];
stats={max_hp=30; attack=80; defense=90; speed=55; sp_attack=55;sp_defense=45;};
poca_type=("ROCK", "WATER");
ascii="


            D7D DD
          D777777777
         777$      ZZ
         7$   ??  7  Z
         $ ?=     7 7Z
         $Z        77
           7? 888
             7



                               "} dexmap

let dexmap = PokeDex.add "VULPIX" {
name="VULPIX";
learnable_moves=["HEADBUTT";"TOXIC";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"ENDURE";"FRUSTRATION";"RETURN";"DIG";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"SWIFT";"REST";"ATTRACT";"FLAMETHROWER";"EMBER";"TAIL WHIP";"QUICK ATTACK";"ROAR";"CONFUSE RAY";"SAFEGUARD";"FLAMETHROWER";"FIRE SPIN";];
stats={max_hp=38; attack=41; defense=40; speed=65; sp_attack=50;sp_defense=65;};
poca_type=("FIRE", "FIRE");
ascii="

       77$78
     +8$$$$$$$N   87$
     D$+7D+ID7  7787$778
      7=++++ZN8878$77877$8
    ND+D7N+IN 8$$$$7$$$$$$
    N+++++II8   888$8$8$8
      NNIIII+++++++N8$$$$$
         ::+++++++++   $$
          IN++N:++II
           IN+NDZ IIN
          DZNZNN  7Z
            ZZ
                               "} dexmap

let dexmap = PokeDex.add "CHANSEY" {
name="CHANSEY";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"ROCK SMASH";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"HYPER BEAM";"ICY WIND";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"SWAGGER";"SLEEP TALK";"SANDSTORM";"FIRE BLAST";"DEFENSE CURL";"DREAM EATER";"REST";"ATTRACT";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"POUND";"GROWL";"TAIL WHIP";"SOFTBOILED";"DOUBLESLAP";"MINIMIZE";"SING";"EGG BOMB";"DEFENSE CURL";"LIGHT SCREEN";"DOUBLE EDGE";];
stats={max_hp=250; attack=05; defense=05; speed=50; sp_attack=35;sp_defense=105;};
poca_type=("NORMAL", "NORMAL");
ascii="
              ~~?
           ?,,,,,,,N
          ?,,,, ,,,~~
       Z?,,,,NN,,,,,~?,?7Z
      7?,,,,,,~,,,,,,,N?77
      77,,,,,,$,,,,,,N?77
        ,,,,?  :?,,,,~~N
        ~,,,    :,,,~~~N
        Z~~Z~~~~?N~~~~~~~
          ~~~7?7~~~~~NZ
         NZZN~~~~~~NZ
                    NN

                               "} dexmap

let dexmap = PokeDex.add "ABRA" {
name="ABRA";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"RETURN";"SHADOW BALL";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"THUNDERPUNCH";"DREAM EATER";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"FLASH";"TELEPORT";];
stats={max_hp=25; attack=20; defense=15; speed=90; sp_attack=105;sp_defense=55;};
poca_type=("PSYCHIC", "PSYCHIC");
ascii="
              O
              O7=O   OO
             7=::====:8
             =======IN  7=
              NI=O=III 8=
             OO8:NNO78 ==
              IO77N8N  =I
     7 =    8NI:=III7NII8
      I==O==INIIO==IOI8I
       ==7IN   NONIINII
      O=N         OO
                   N

                               "} dexmap

let dexmap = PokeDex.add "CLEFAIRY" {
name="CLEFAIRY";
learnable_moves=["DYNAMICPUNCH";"HEADBUTT";"ROLLOUT";"TOXIC";"ZAP CANNON";"PSYCH UP";"HIDDEN POWER";"SUNNY DAY";"SNORE";"BLIZZARD";"PROTECT";"RAIN DANCE";"ENDURE";"FRUSTRATION";"SOLARBEAM";"THUNDER";"RETURN";"SHADOW BALL";"MUD SLAP";"DOUBLE TEAM";"ICE PUNCH";"SWAGGER";"SLEEP TALK";"FIRE BLAST";"DEFENSE CURL";"THUNDERPUNCH";"DREAM EATER";"DETECT";"REST";"ATTRACT";"FIRE PUNCH";"NIGHTMARE";"STRENGTH";"FLASH";"FLAMETHROWER";"THUNDERBOLT";"ICE BEAM";"POUND";"GROWL";"ENCORE";"SING";"DOUBLESLAP";"MINIMIZE";"DEFENSE CURL";"METRONOME";"MOONLIGHT";"LIGHT SCREEN";];
stats={max_hp=70; attack=45; defense=48; speed=35; sp_attack=60;sp_defense=65;};
poca_type=("NORMAL", "NORMAL");
ascii="


        8II? ::::$ 8IIZ
        88~:$:::~:::ZNN
         $$::~NN:::~$N8
       $$$:::::N$:$~:N?
        :::?:N ::?:::~?$
        N::::::::::::~:
         ~:::::::::~~N:
          ~~~:::~~~~~~~
           ~~~$$~~~~N
                 NN

                               "} dexmap

let dexmap = PokeDex.add "RAPIDASH" {
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
           ~7ZZ O?===??ZZ77??=="} dexmap





let get_move (name: string) : move  =
	try MoveDex.find name movedex
	with _ -> failwith ("Can't find move " ^ name)


let get_pocamon (name: string): dex_pocamon  =
	try PokeDex.find name dexmap
	with _ -> failwith ("Can't find pokemon " ^ name)


let type_of_string s : pType =
	match s with
	| "NORMAL" -> TNormal
	| "FIRE" -> TFire
	| "WATER" -> TWater
	| "ELECTRIC" -> TElectric
	| "GRASS" -> TGrass
	| "ICE" -> TIce
	| "FIGHTING" -> TFighting
	| "POISON" -> TPoison
	| "GROUND" -> TGround
	| "FLYING" -> TFlying
	| "PSYCHIC" -> TPsychic
	| "BUG" -> TBug
	| "ROCK" -> TRock
	| "GHOST" -> TGhost
	| "DRAGON" -> TDragon
	| _ -> failwith ("not a type:" ^ s)

let update_stats base_stats  : poca_stats =
	let rec gen_ev stats (points: int) : poca_stats =
		if points = 0 then stats else
		let index = Random.int 6 in
		let addPoints = Random.int 50 in
		let addPoints = if addPoints < points then addPoints else points in
		match index with
		| 0 -> if stats.max_hp < 252
			   then gen_ev {stats with max_hp = stats.max_hp + addPoints}
			   (points - addPoints)
			   else  gen_ev stats points
		| 1 -> if stats.attack < 252
			   then gen_ev {stats with attack = stats.attack + addPoints}
			   (points - addPoints)
			   else  gen_ev stats points
		| 2 -> if stats.defense < 252
			   then gen_ev {stats with defense = stats.defense + addPoints}
			   (points - addPoints)
			   else  gen_ev stats points
		| 3 -> if stats.speed < 252
			   then gen_ev {stats with speed = stats.speed + addPoints}
			   (points - addPoints)
			   else gen_ev stats points
		| 4 -> if stats.sp_attack < 252
			   then gen_ev {stats with sp_attack = stats.sp_attack + addPoints}
			   (points - addPoints)
			   else gen_ev stats points
		| 5-> if stats.sp_defense < 252
			   then gen_ev {stats with sp_defense = stats.sp_defense + addPoints}
			   (points - addPoints)
			   else  gen_ev stats points
		| _ -> failwith "error in random number generation" in
	let evs = gen_ev { max_hp = 0; attack = 0; defense = 0 ; sp_defense = 0;
            sp_attack = 0; speed = 0} 504 in
  let iv = Random.int 31 in
  let max_hp' = (base_stats.max_hp * 2 + iv + (evs.max_hp / 4)) + 110 in
  let atk = (base_stats.attack * 2 + iv + (evs.attack / 4)) + 5 in
  let def = (base_stats.defense * 2 + iv + (evs.defense / 4)) + 5 in
  let sp_atk = (base_stats.sp_attack * 2 + iv + (evs.sp_attack / 4)) + 5 in
  let sp_def = (base_stats.sp_defense * 2 + iv + (evs.sp_defense / 4)) + 5 in
  let speed' = (base_stats.speed * 2 + iv + (evs.speed / 4)) + 5 in
  {max_hp=max_hp'; attack=atk; defense=def; sp_attack=sp_atk;
    sp_defense=sp_def; speed=speed'}

let get_four_moves (moves: string list): move list =
  Random.self_init ();
  let mlst = List.map
       (fun move -> get_move move) moves in
  if List.length mlst <= 4 then mlst else
	let rec get_four acc: int list =
			if List.length acc = 4 then acc else
			let rando: int = Random.int (List.length mlst) in
			if List.mem rando acc then get_four acc else get_four (rando::acc)  in
	let randos = get_four [] in

	(* List must contain four elements as defined above*)
	[List.nth mlst (List.nth randos 0); List.nth mlst (List.nth randos 1);
	List.nth mlst (List.nth randos 2); List.nth mlst (List.nth randos 3)]



let get_random_pocamon () : pocamon =
	let lst = ["BULBASAUR"; "IVYSAUR"; "VENUSAUR"; "CHARMANDER"; "CHARMELEON"; "CHARIZARD"; "SQUIRTLE"; "WARTORTLE";    "BLASTOISE"; "CATERPIE"; "METAPOD"; "BUTTERFREE"; "WEEDLE"; "KAKUNA"; "BEEDRILL"; "PIDGEY"; "PIDGEOTTO"; "PIDGEOT"; "RATTATA"; "RATICATE"; "SPEAROW"; "FEAROW"; "EKANS"; "ARBOK"; "PIKACHU";"RAICHU"; "SANDSHREW"; "SANDSLASH"; "NIDORANM"; "NIDORANF"; "NIDORINA"; "NIDOQUEEN"; "NIDORINO"; "NIDOKING"; "CLEFAIRY"; "CLEFABLE"; "VULPIX"; "NINETALES"; "JIGGLYPUFF"; "WIGGLYTUFF"; "ZUBAT"; "GOLBAT"; "ODDISH"; "GLOOM"; "VILEPLUME"; "PARAS"; "PARASECT"; "VENONAT"; "VENOMOTH"; "DIGLETT";"DUGTRIO"; "MEOWTH"; "PERSIAN"; "PSYDUCK"; "GOLDUCK"; "MANKEY"; "PRIMEAPE"; "GROWLITHE"; "ARCANINE"; "POLIWAG"; "POLIWHIRL"; "POLIWRATH"; "ABRA"; "KADABRA"; "ALAKAZAM"; "MACHOP"; "MACHOKE"; "MACHAMP"; "BELLSPROUT"; "WEEPINBELL"; "VICTREEBEL"; "TENTACOOL"; "TENTACRUEL"; "GEODUDE"; "GRAVELER"; "GOLEM"; "PONYTA"; "RAPIDASH"; "SLOWPOKE"; "SLOWBRO"; "MAGNEMITE"; "MAGNETON"; "FARFETCHD"; "DODUO"; "DODRIO"; "SEEL"; "DEWGONG"; "GRIMER"; "MUK"; "SHELLDER"; "CLOYSTER"; "GASTLY"; "HAUNTER"; "GENGAR"; "ONIX"; "DROWZEE"; "HYPNO"; "KRABBY"; "KINGLER"; "VOLTORB"; "ELECTRODE"; "EXEGGCUTE"; "EXEGGUTOR"; "CUBONE"; "MAROWAK"; "HITMONLEE"; "HITMONCHAN"; "LICKITUNG"; "KOFFING"; "WEEZING"; "RHYHORN"; "RHYDON"; "CHANSEY"; "TANGELA"; "KANGASKHAN"; "HORSEA"; "SEADRA"; "GOLDEEN"; "SEAKING"; "STARYU"; "STARMIE"; "MR.MIME"; "SCYTHER"; "JYNX"; "ELECTABUZZ"; "MAGMAR"; "PINSIR"; "TAUROS"; "MAGIKARP"; "GYARADOS"; "LAPRAS"; "EEVEE"; "VAPOREON"; "JOLTEON"; "FLAREON"; "PORYGON"; "OMANYTE"; "OMASTAR"; "KABUTO"; "KABUTOPS"; "AERODACTYL"; "SNORLAX"; "ARTICUNO"; "ZAPDOS"; "MOLTRES"; "DRATINI"; "DRAGONAIR"; "DRAGONITE"; "MEWTWO"; "MEW"] in
	Random.self_init ();
	let index = Random.int 150 in
	let pocamon_name = List.nth lst index in
	let dexmon = get_pocamon pocamon_name in
	let pType = (type_of_string (fst dexmon.poca_type),
		         type_of_string (snd dexmon.poca_type)) in
	let new_stats = update_stats dexmon.stats in
	{ name = pocamon_name;
	  status = SNormal;
	  moves = get_four_moves dexmon.learnable_moves;
	  poca_type = pType ;
	  health  = new_stats.max_hp;
	  stats = new_stats ;
    charging = None;
	  ascii = dexmon.ascii;  }

