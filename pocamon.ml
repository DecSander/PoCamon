module My_Moves = Map.make(move)
let m = My_Moves.empty

let m = My_Moves.add "POUND" {name="POUND"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35} m
let m = My_Moves.add "KARATE CHOP" {name="KARATE CHOP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; PP=25} m
let m = My_Moves.add "DOUBLESLAP" {name="DOUBLESLAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=10; PP=10} m
let m = My_Moves.add "COMET PUNCH" {name="COMET PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=18; max_PP=15; PP=15} m
let m = My_Moves.add "MEGA PUNCH" {name="MEGA PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=80; max_PP=20; PP=20} m
let m = My_Moves.add "PAY DAY" {name="PAY DAY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=20; PP=20} m
let m = My_Moves.add "FIRE PUNCH" {name="FIRE PUNCH"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15} m
let m = My_Moves.add "ICE PUNCH" {name="ICE PUNCH"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15} m
let m = My_Moves.add "THUNDERPUNCH" {name="THUNDERPUNCH"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15} m
let m = My_Moves.add "SCRATCH" {name="SCRATCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35} m
let m = My_Moves.add "VICEGRIP" {name="VICEGRIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=55; max_PP=30; PP=30} m
let m = My_Moves.add "GUILLOTINE" {name="GUILLOTINE"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5} m
let m = My_Moves.add "RAZOR WIND" {name="RAZOR WIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=10; PP=10} m
let m = My_Moves.add "SWORDS DANCE" {name="SWORDS DANCE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "CUT" {name="CUT"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=50; max_PP=30; PP=30} m
let m = My_Moves.add "GUST" {name="GUST"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35} m
let m = My_Moves.add "WING ATTACK" {name="WING ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; PP=35} m
let m = My_Moves.add "WHIRLWIND" {name="WHIRLWIND"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "FLY" {name="FLY"; move_type=TFlying; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=15; PP=15} m
let m = My_Moves.add "BIND" {name="BIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=15; max_PP=20; PP=20} m
let m = My_Moves.add "SLAM" {name="SLAM"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=20; PP=20} m
let m = My_Moves.add "VINE WHIP" {name="VINE WHIP"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=10; PP=10} m
let m = My_Moves.add "STOMP" {name="STOMP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "DOUBLE KICK" {name="DOUBLE KICK"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=30; max_PP=30; PP=30} m
let m = My_Moves.add "MEGA KICK" {name="MEGA KICK"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=120; max_PP=5; PP=5} m
let m = My_Moves.add "JUMP KICK" {name="JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=25; PP=25} m
let m = My_Moves.add "ROLLING KICK" {name="ROLLING KICK"; move_type=TFighting; status_effect=SNormal; status_probability=85; accuracy=85; damage=60; max_PP=15; PP=15} m
let m = My_Moves.add "SAND ATTACK" {name="SAND ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "HEADBUTT" {name="HEADBUTT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=15; PP=15} m
let m = My_Moves.add "HORN ATTACK" {name="HORN ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=25; PP=25} m
let m = My_Moves.add "FURY ATTACK" {name="FURY ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20} m
let m = My_Moves.add "HORN DRILL" {name="HORN DRILL"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5} m
let m = My_Moves.add "TACKLE" {name="TACKLE"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=35; max_PP=35; PP=35} m
let m = My_Moves.add "BODY SLAM" {name="BODY SLAM"; move_type=TNormal; status_effect=SParalyze; status_probability=100; accuracy=100; damage=85; max_PP=15; PP=15} m
let m = My_Moves.add "WRAP" {name="WRAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20} m
let m = My_Moves.add "TAKE DOWN" {name="TAKE DOWN"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=20; PP=20} m
let m = My_Moves.add "THRASH" {name="THRASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=20; PP=20} m
let m = My_Moves.add "DOUBLE EDGE" {name="DOUBLE EDGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15} m
let m = My_Moves.add "TAIL WHIP" {name="TAIL WHIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "POISON STING" {name="POISON STING"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=15; max_PP=35; PP=35} m
let m = My_Moves.add "TWINEEDLE" {name="TWINEEDLE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=25; max_PP=20; PP=20} m
let m = My_Moves.add "PIN MISSILE" {name="PIN MISSILE"; move_type=TBug; status_effect=SNormal; status_probability=85; accuracy=85; damage=14; max_PP=20; PP=20} m
let m = My_Moves.add "LEER" {name="LEER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "BITE" {name="BITE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=25; PP=25} m
let m = My_Moves.add "GROWL" {name="GROWL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "ROAR" {name="ROAR"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "SING" {name="SING"; move_type=TNormal; status_effect=SSleep; status_probability=55; accuracy=55; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "SUPERSONIC" {name="SUPERSONIC"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "SONICBOOM" {name="SONICBOOM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=20; PP=20} m
let m = My_Moves.add "DISABLE" {name="DISABLE"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "ACID" {name="ACID"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30} m
let m = My_Moves.add "EMBER" {name="EMBER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=40; max_PP=25; PP=25} m
let m = My_Moves.add "FLAMETHROWER" {name="FLAMETHROWER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15} m
let m = My_Moves.add "MIST" {name="MIST"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "WATER GUN" {name="WATER GUN"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=25; PP=25} m
let m = My_Moves.add "HYDRO PUMP" {name="HYDRO PUMP"; move_type=TWater; status_effect=SNormal; status_probability=80; accuracy=80; damage=120; max_PP=5; PP=5} m
let m = My_Moves.add "SURF" {name="SURF"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15} m
let m = My_Moves.add "ICE BEAM" {name="ICE BEAM"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=95; max_PP=10; PP=10} m
let m = My_Moves.add "BLIZZARD" {name="BLIZZARD"; move_type=TIce; status_effect=SFreeze; status_probability=90; accuracy=90; damage=120; max_PP=5; PP=5} m
let m = My_Moves.add "PSYBEAM" {name="PSYBEAM"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "BUBBLEBEAM" {name="BUBBLEBEAM"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "AURORA BEAM" {name="AURORA BEAM"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "HYPER BEAM" {name="HYPER BEAM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=150; max_PP=5; PP=5} m
let m = My_Moves.add "PECK" {name="PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; PP=35} m
let m = My_Moves.add "DRILL PECK" {name="DRILL PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=20; PP=20} m
let m = My_Moves.add "SUBMISSION" {name="SUBMISSION"; move_type=TFighting; status_effect=SNormal; status_probability=80; accuracy=80; damage=80; max_PP=25; PP=25} m
let m = My_Moves.add "LOW KICK" {name="LOW KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=20; PP=20} m
let m = My_Moves.add "COUNTER" {name="COUNTER"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; PP=20} m
let m = My_Moves.add "SEISMIC TOSS" {name="SEISMIC TOSS"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; PP=20} m
let m = My_Moves.add "STRENGTH" {name="STRENGTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; PP=15} m
let m = My_Moves.add "ABSORB" {name="ABSORB"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; PP=20} m
let m = My_Moves.add "MEGA DRAIN" {name="MEGA DRAIN"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=10; PP=10} m
let m = My_Moves.add "LEECH SEED" {name="LEECH SEED"; move_type=TGrass; status_effect=SNormal; status_probability=90; accuracy=90; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "GROWTH" {name="GROWTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "RAZOR LEAF" {name="RAZOR LEAF"; move_type=TGrass; status_effect=SNormal; status_probability=95; accuracy=95; damage=55; max_PP=25; PP=25} m
let m = My_Moves.add "SOLARBEAM" {name="SOLARBEAM"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=120; max_PP=10; PP=10} m
let m = My_Moves.add "POISONPOWDER" {name="POISONPOWDER"; move_type=TPoison; status_effect=SPoison; status_probability=75; accuracy=75; damage=0; max_PP=35; PP=35} m
let m = My_Moves.add "STUN SPORE" {name="STUN SPORE"; move_type=TGrass; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "SLEEP POWDER" {name="SLEEP POWDER"; move_type=TGrass; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "PETAL DANCE" {name="PETAL DANCE"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; PP=20} m
let m = My_Moves.add "STRING SHOT" {name="STRING SHOT"; move_type=TBug; status_effect=SNormal; status_probability=95; accuracy=95; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "DRAGON RAGE" {name="DRAGON RAGE"; move_type=TDragon; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=10; PP=10} m
let m = My_Moves.add "FIRE SPIN" {name="FIRE SPIN"; move_type=TFire; status_effect=SNormal; status_probability=70; accuracy=70; damage=15; max_PP=15; PP=15} m
let m = My_Moves.add "THUNDERSHOCK" {name="THUNDERSHOCK"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30} m
let m = My_Moves.add "THUNDERBOLT" {name="THUNDERBOLT"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15} m
let m = My_Moves.add "THUNDER WAVE" {name="THUNDER WAVE"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "THUNDER" {name="THUNDER"; move_type=TElectric; status_effect=SParalyze; status_probability=70; accuracy=70; damage=120; max_PP=10; PP=10} m
let m = My_Moves.add "ROCK THROW" {name="ROCK THROW"; move_type=TRock; status_effect=SNormal; status_probability=65; accuracy=65; damage=50; max_PP=15; PP=15} m
let m = My_Moves.add "EARTHQUAKE" {name="EARTHQUAKE"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; PP=10} m
let m = My_Moves.add "FISSURE" {name="FISSURE"; move_type=TGround; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5} m
let m = My_Moves.add "DIG" {name="DIG"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; PP=10} m
let m = My_Moves.add "TOXIC" {name="TOXIC"; move_type=TPoison; status_effect=SPoison; status_probability=85; accuracy=85; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "CONFUSION" {name="CONFUSION"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; PP=25} m
let m = My_Moves.add "PSYCHIC M" {name="PSYCHIC M"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=10; PP=10} m
let m = My_Moves.add "HYPNOSIS" {name="HYPNOSIS"; move_type=TPsychic; status_effect=SSleep; status_probability=60; accuracy=60; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "MEDITATE" {name="MEDITATE"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "AGILITY" {name="AGILITY"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "QUICK ATTACK" {name="QUICK ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30} m
let m = My_Moves.add "RAGE" {name="RAGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; PP=20} m
let m = My_Moves.add "TELEPORT" {name="TELEPORT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "NIGHT SHADE" {name="NIGHT SHADE"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "MIMIC" {name="MIMIC"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "SCREECH" {name="SCREECH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "DOUBLE TEAM" {name="DOUBLE TEAM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "RECOVER" {name="RECOVER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "HARDEN" {name="HARDEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "MINIMIZE" {name="MINIMIZE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "SMOKESCREEN" {name="SMOKESCREEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "CONFUSE RAY" {name="CONFUSE RAY"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "WITHDRAW" {name="WITHDRAW"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "DEFENSE CURL" {name="DEFENSE CURL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "BARRIER" {name="BARRIER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "LIGHT SCREEN" {name="LIGHT SCREEN"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "HAZE" {name="HAZE"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "REFLECT" {name="REFLECT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "FOCUS ENERGY" {name="FOCUS ENERGY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "BIDE" {name="BIDE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "METRONOME" {name="METRONOME"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "MIRROR MOVE" {name="MIRROR MOVE"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "SELFDESTRUCT" {name="SELFDESTRUCT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=130; max_PP=5; PP=5} m
let m = My_Moves.add "EGG BOMB" {name="EGG BOMB"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=100; max_PP=10; PP=10} m
let m = My_Moves.add "LICK" {name="LICK"; move_type=TGhost; status_effect=SParalyze; status_probability=100; accuracy=100; damage=20; max_PP=30; PP=30} m
let m = My_Moves.add "SMOG" {name="SMOG"; move_type=TPoison; status_effect=SPoison; status_probability=70; accuracy=70; damage=20; max_PP=20; PP=20} m
let m = My_Moves.add "SLUDGE" {name="SLUDGE"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "BONE CLUB" {name="BONE CLUB"; move_type=TGround; status_effect=SNormal; status_probability=85; accuracy=85; damage=65; max_PP=20; PP=20} m
let m = My_Moves.add "FIRE BLAST" {name="FIRE BLAST"; move_type=TFire; status_effect=SBurn; status_probability=85; accuracy=85; damage=120; max_PP=5; PP=5} m
let m = My_Moves.add "WATERFALL" {name="WATERFALL"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; PP=15} m
let m = My_Moves.add "CLAMP" {name="CLAMP"; move_type=TWater; status_effect=SNormal; status_probability=75; accuracy=75; damage=35; max_PP=10; PP=10} m
let m = My_Moves.add "SWIFT" {name="SWIFT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=20; PP=20} m
let m = My_Moves.add "SKULL BASH" {name="SKULL BASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15} m
let m = My_Moves.add "SPIKE CANNON" {name="SPIKE CANNON"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; PP=15} m
let m = My_Moves.add "CONSTRICT" {name="CONSTRICT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=10; max_PP=35; PP=35} m
let m = My_Moves.add "AMNESIA" {name="AMNESIA"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "KINESIS" {name="KINESIS"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "SOFTBOILED" {name="SOFTBOILED"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "HI JUMP KICK" {name="HI JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=85; max_PP=20; PP=20} m
let m = My_Moves.add "GLARE" {name="GLARE"; move_type=TNormal; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "DREAM EATER" {name="DREAM EATER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15} m
let m = My_Moves.add "POISON GAS" {name="POISON GAS"; move_type=TPoison; status_effect=SPoison; status_probability=55; accuracy=55; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "BARRAGE" {name="BARRAGE"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20} m
let m = My_Moves.add "LEECH LIFE" {name="LEECH LIFE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; PP=15} m
let m = My_Moves.add "LOVELY KISS" {name="LOVELY KISS"; move_type=TNormal; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "SKY ATTACK" {name="SKY ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=90; accuracy=90; damage=140; max_PP=5; PP=5} m
let m = My_Moves.add "TRANSFORM" {name="TRANSFORM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "BUBBLE" {name="BUBBLE"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=30; PP=30} m
let m = My_Moves.add "DIZZY PUNCH" {name="DIZZY PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=10; PP=10} m
let m = My_Moves.add "SPORE" {name="SPORE"; move_type=TGrass; status_effect=SSleep; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15} m
let m = My_Moves.add "FLASH" {name="FLASH"; move_type=TNormal; status_effect=SNormal; status_probability=70; accuracy=70; damage=0; max_PP=20; PP=20} m
let m = My_Moves.add "PSYWAVE" {name="PSYWAVE"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=1; max_PP=15; PP=15} m
let m = My_Moves.add "SPLASH" {name="SPLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "ACID ARMOR" {name="ACID ARMOR"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40} m
let m = My_Moves.add "CRABHAMMER" {name="CRABHAMMER"; move_type=TWater; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=10; PP=10} m
let m = My_Moves.add "EXPLOSION" {name="EXPLOSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=170; max_PP=5; PP=5} m
let m = My_Moves.add "FURY SWIPES" {name="FURY SWIPES"; move_type=TNormal; status_effect=SNormal; status_probability=80; accuracy=80; damage=18; max_PP=15; PP=15} m
let m = My_Moves.add "BONEMERANG" {name="BONEMERANG"; move_type=TGround; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=10; PP=10} m
let m = My_Moves.add "REST" {name="REST"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "ROCK SLIDE" {name="ROCK SLIDE"; move_type=TRock; status_effect=SNormal; status_probability=90; accuracy=90; damage=75; max_PP=10; PP=10} m
let m = My_Moves.add "HYPER FANG" {name="HYPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=80; max_PP=15; PP=15} m
let m = My_Moves.add "SHARPEN" {name="SHARPEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "CONVERSION" {name="CONVERSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30} m
let m = My_Moves.add "TRI ATTACK" {name="TRI ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=10; PP=10} m
let m = My_Moves.add "SUPER FANG" {name="SUPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=10; PP=10} m
let m = My_Moves.add "SLASH" {name="SLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; PP=20} m
let m = My_Moves.add "SUBSTITUTE" {name="SUBSTITUTE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10} m
let m = My_Moves.add "STRUGGLE" {name="STRUGGLE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=10; PP=10}

let get_move name =
  My_Moves.find name m