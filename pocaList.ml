open Types
let my_hash = Hashtbl.create 180

Hashtbl.add my_hash "POUND" {name="POUND"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35}
Hashtbl.add my_hash "KARATE CHOP" {name="KARATE CHOP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; PP=25}
Hashtbl.add my_hash "DOUBLESLAP" {name="DOUBLESLAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=10; PP=10}
Hashtbl.add my_hash "COMET PUNCH" {name="COMET PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=18; max_PP=15; PP=15}
Hashtbl.add my_hash "MEGA PUNCH" {name="MEGA PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=80; max_PP=20; PP=20}
Hashtbl.add my_hash "PAY DAY" {name="PAY DAY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=20; PP=20}
Hashtbl.add my_hash "FIRE PUNCH" {name="FIRE PUNCH"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15}
Hashtbl.add my_hash "ICE PUNCH" {name="ICE PUNCH"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15}
Hashtbl.add my_hash "THUNDERPUNCH" {name="THUNDERPUNCH"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=75; max_PP=15; PP=15}
Hashtbl.add my_hash "SCRATCH" {name="SCRATCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35}
Hashtbl.add my_hash "VICEGRIP" {name="VICEGRIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=55; max_PP=30; PP=30}
Hashtbl.add my_hash "GUILLOTINE" {name="GUILLOTINE"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5}
Hashtbl.add my_hash "RAZOR WIND" {name="RAZOR WIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=10; PP=10}
Hashtbl.add my_hash "SWORDS DANCE" {name="SWORDS DANCE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "CUT" {name="CUT"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=50; max_PP=30; PP=30}
Hashtbl.add my_hash "GUST" {name="GUST"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; PP=35}
Hashtbl.add my_hash "WING ATTACK" {name="WING ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; PP=35}
Hashtbl.add my_hash "WHIRLWIND" {name="WHIRLWIND"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "FLY" {name="FLY"; move_type=TFlying; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=15; PP=15}
Hashtbl.add my_hash "BIND" {name="BIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=15; max_PP=20; PP=20}
Hashtbl.add my_hash "SLAM" {name="SLAM"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=20; PP=20}
Hashtbl.add my_hash "VINE WHIP" {name="VINE WHIP"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=10; PP=10}
Hashtbl.add my_hash "STOMP" {name="STOMP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "DOUBLE KICK" {name="DOUBLE KICK"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=30; max_PP=30; PP=30}
Hashtbl.add my_hash "MEGA KICK" {name="MEGA KICK"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=120; max_PP=5; PP=5}
Hashtbl.add my_hash "JUMP KICK" {name="JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=25; PP=25}
Hashtbl.add my_hash "ROLLING KICK" {name="ROLLING KICK"; move_type=TFighting; status_effect=SNormal; status_probability=85; accuracy=85; damage=60; max_PP=15; PP=15}
Hashtbl.add my_hash "SAND ATTACK" {name="SAND ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "HEADBUTT" {name="HEADBUTT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=15; PP=15}
Hashtbl.add my_hash "HORN ATTACK" {name="HORN ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=25; PP=25}
Hashtbl.add my_hash "FURY ATTACK" {name="FURY ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20}
Hashtbl.add my_hash "HORN DRILL" {name="HORN DRILL"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5}
Hashtbl.add my_hash "TACKLE" {name="TACKLE"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=35; max_PP=35; PP=35}
Hashtbl.add my_hash "BODY SLAM" {name="BODY SLAM"; move_type=TNormal; status_effect=SParalyze; status_probability=100; accuracy=100; damage=85; max_PP=15; PP=15}
Hashtbl.add my_hash "WRAP" {name="WRAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20}
Hashtbl.add my_hash "TAKE DOWN" {name="TAKE DOWN"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=20; PP=20}
Hashtbl.add my_hash "THRASH" {name="THRASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=20; PP=20}
Hashtbl.add my_hash "DOUBLE EDGE" {name="DOUBLE EDGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15}
Hashtbl.add my_hash "TAIL WHIP" {name="TAIL WHIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "POISON STING" {name="POISON STING"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=15; max_PP=35; PP=35}
Hashtbl.add my_hash "TWINEEDLE" {name="TWINEEDLE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=25; max_PP=20; PP=20}
Hashtbl.add my_hash "PIN MISSILE" {name="PIN MISSILE"; move_type=TBug; status_effect=SNormal; status_probability=85; accuracy=85; damage=14; max_PP=20; PP=20}
Hashtbl.add my_hash "LEER" {name="LEER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "BITE" {name="BITE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=25; PP=25}
Hashtbl.add my_hash "GROWL" {name="GROWL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "ROAR" {name="ROAR"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "SING" {name="SING"; move_type=TNormal; status_effect=SSleep; status_probability=55; accuracy=55; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "SUPERSONIC" {name="SUPERSONIC"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "SONICBOOM" {name="SONICBOOM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=20; PP=20}
Hashtbl.add my_hash "DISABLE" {name="DISABLE"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "ACID" {name="ACID"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30}
Hashtbl.add my_hash "EMBER" {name="EMBER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=40; max_PP=25; PP=25}
Hashtbl.add my_hash "FLAMETHROWER" {name="FLAMETHROWER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15}
Hashtbl.add my_hash "MIST" {name="MIST"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "WATER GUN" {name="WATER GUN"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=25; PP=25}
Hashtbl.add my_hash "HYDRO PUMP" {name="HYDRO PUMP"; move_type=TWater; status_effect=SNormal; status_probability=80; accuracy=80; damage=120; max_PP=5; PP=5}
Hashtbl.add my_hash "SURF" {name="SURF"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15}
Hashtbl.add my_hash "ICE BEAM" {name="ICE BEAM"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=95; max_PP=10; PP=10}
Hashtbl.add my_hash "BLIZZARD" {name="BLIZZARD"; move_type=TIce; status_effect=SFreeze; status_probability=90; accuracy=90; damage=120; max_PP=5; PP=5}
Hashtbl.add my_hash "PSYBEAM" {name="PSYBEAM"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "BUBBLEBEAM" {name="BUBBLEBEAM"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "AURORA BEAM" {name="AURORA BEAM"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "HYPER BEAM" {name="HYPER BEAM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=150; max_PP=5; PP=5}
Hashtbl.add my_hash "PECK" {name="PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; PP=35}
Hashtbl.add my_hash "DRILL PECK" {name="DRILL PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=20; PP=20}
Hashtbl.add my_hash "SUBMISSION" {name="SUBMISSION"; move_type=TFighting; status_effect=SNormal; status_probability=80; accuracy=80; damage=80; max_PP=25; PP=25}
Hashtbl.add my_hash "LOW KICK" {name="LOW KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=20; PP=20}
Hashtbl.add my_hash "COUNTER" {name="COUNTER"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; PP=20}
Hashtbl.add my_hash "SEISMIC TOSS" {name="SEISMIC TOSS"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; PP=20}
Hashtbl.add my_hash "STRENGTH" {name="STRENGTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; PP=15}
Hashtbl.add my_hash "ABSORB" {name="ABSORB"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; PP=20}
Hashtbl.add my_hash "MEGA DRAIN" {name="MEGA DRAIN"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=10; PP=10}
Hashtbl.add my_hash "LEECH SEED" {name="LEECH SEED"; move_type=TGrass; status_effect=SNormal; status_probability=90; accuracy=90; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "GROWTH" {name="GROWTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "RAZOR LEAF" {name="RAZOR LEAF"; move_type=TGrass; status_effect=SNormal; status_probability=95; accuracy=95; damage=55; max_PP=25; PP=25}
Hashtbl.add my_hash "SOLARBEAM" {name="SOLARBEAM"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=120; max_PP=10; PP=10}
Hashtbl.add my_hash "POISONPOWDER" {name="POISONPOWDER"; move_type=TPoison; status_effect=SPoison; status_probability=75; accuracy=75; damage=0; max_PP=35; PP=35}
Hashtbl.add my_hash "STUN SPORE" {name="STUN SPORE"; move_type=TGrass; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "SLEEP POWDER" {name="SLEEP POWDER"; move_type=TGrass; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "PETAL DANCE" {name="PETAL DANCE"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; PP=20}
Hashtbl.add my_hash "STRING SHOT" {name="STRING SHOT"; move_type=TBug; status_effect=SNormal; status_probability=95; accuracy=95; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "DRAGON RAGE" {name="DRAGON RAGE"; move_type=TDragon; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=10; PP=10}
Hashtbl.add my_hash "FIRE SPIN" {name="FIRE SPIN"; move_type=TFire; status_effect=SNormal; status_probability=70; accuracy=70; damage=15; max_PP=15; PP=15}
Hashtbl.add my_hash "THUNDERSHOCK" {name="THUNDERSHOCK"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30}
Hashtbl.add my_hash "THUNDERBOLT" {name="THUNDERBOLT"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=95; max_PP=15; PP=15}
Hashtbl.add my_hash "THUNDER WAVE" {name="THUNDER WAVE"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "THUNDER" {name="THUNDER"; move_type=TElectric; status_effect=SParalyze; status_probability=70; accuracy=70; damage=120; max_PP=10; PP=10}
Hashtbl.add my_hash "ROCK THROW" {name="ROCK THROW"; move_type=TRock; status_effect=SNormal; status_probability=65; accuracy=65; damage=50; max_PP=15; PP=15}
Hashtbl.add my_hash "EARTHQUAKE" {name="EARTHQUAKE"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; PP=10}
Hashtbl.add my_hash "FISSURE" {name="FISSURE"; move_type=TGround; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; PP=5}
Hashtbl.add my_hash "DIG" {name="DIG"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; PP=10}
Hashtbl.add my_hash "TOXIC" {name="TOXIC"; move_type=TPoison; status_effect=SPoison; status_probability=85; accuracy=85; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "CONFUSION" {name="CONFUSION"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; PP=25}
Hashtbl.add my_hash "PSYCHIC M" {name="PSYCHIC M"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=10; PP=10}
Hashtbl.add my_hash "HYPNOSIS" {name="HYPNOSIS"; move_type=TPsychic; status_effect=SSleep; status_probability=60; accuracy=60; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "MEDITATE" {name="MEDITATE"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "AGILITY" {name="AGILITY"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "QUICK ATTACK" {name="QUICK ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; PP=30}
Hashtbl.add my_hash "RAGE" {name="RAGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; PP=20}
Hashtbl.add my_hash "TELEPORT" {name="TELEPORT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "NIGHT SHADE" {name="NIGHT SHADE"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "MIMIC" {name="MIMIC"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "SCREECH" {name="SCREECH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "DOUBLE TEAM" {name="DOUBLE TEAM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "RECOVER" {name="RECOVER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "HARDEN" {name="HARDEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "MINIMIZE" {name="MINIMIZE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "SMOKESCREEN" {name="SMOKESCREEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "CONFUSE RAY" {name="CONFUSE RAY"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "WITHDRAW" {name="WITHDRAW"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "DEFENSE CURL" {name="DEFENSE CURL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "BARRIER" {name="BARRIER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "LIGHT SCREEN" {name="LIGHT SCREEN"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "HAZE" {name="HAZE"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "REFLECT" {name="REFLECT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "FOCUS ENERGY" {name="FOCUS ENERGY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "BIDE" {name="BIDE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "METRONOME" {name="METRONOME"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "MIRROR MOVE" {name="MIRROR MOVE"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "SELFDESTRUCT" {name="SELFDESTRUCT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=130; max_PP=5; PP=5}
Hashtbl.add my_hash "EGG BOMB" {name="EGG BOMB"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=100; max_PP=10; PP=10}
Hashtbl.add my_hash "LICK" {name="LICK"; move_type=TGhost; status_effect=SParalyze; status_probability=100; accuracy=100; damage=20; max_PP=30; PP=30}
Hashtbl.add my_hash "SMOG" {name="SMOG"; move_type=TPoison; status_effect=SPoison; status_probability=70; accuracy=70; damage=20; max_PP=20; PP=20}
Hashtbl.add my_hash "SLUDGE" {name="SLUDGE"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "BONE CLUB" {name="BONE CLUB"; move_type=TGround; status_effect=SNormal; status_probability=85; accuracy=85; damage=65; max_PP=20; PP=20}
Hashtbl.add my_hash "FIRE BLAST" {name="FIRE BLAST"; move_type=TFire; status_effect=SBurn; status_probability=85; accuracy=85; damage=120; max_PP=5; PP=5}
Hashtbl.add my_hash "WATERFALL" {name="WATERFALL"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; PP=15}
Hashtbl.add my_hash "CLAMP" {name="CLAMP"; move_type=TWater; status_effect=SNormal; status_probability=75; accuracy=75; damage=35; max_PP=10; PP=10}
Hashtbl.add my_hash "SWIFT" {name="SWIFT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=20; PP=20}
Hashtbl.add my_hash "SKULL BASH" {name="SKULL BASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15}
Hashtbl.add my_hash "SPIKE CANNON" {name="SPIKE CANNON"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; PP=15}
Hashtbl.add my_hash "CONSTRICT" {name="CONSTRICT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=10; max_PP=35; PP=35}
Hashtbl.add my_hash "AMNESIA" {name="AMNESIA"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "KINESIS" {name="KINESIS"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "SOFTBOILED" {name="SOFTBOILED"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "HI JUMP KICK" {name="HI JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=85; max_PP=20; PP=20}
Hashtbl.add my_hash "GLARE" {name="GLARE"; move_type=TNormal; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "DREAM EATER" {name="DREAM EATER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; PP=15}
Hashtbl.add my_hash "POISON GAS" {name="POISON GAS"; move_type=TPoison; status_effect=SPoison; status_probability=55; accuracy=55; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "BARRAGE" {name="BARRAGE"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; PP=20}
Hashtbl.add my_hash "LEECH LIFE" {name="LEECH LIFE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; PP=15}
Hashtbl.add my_hash "LOVELY KISS" {name="LOVELY KISS"; move_type=TNormal; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "SKY ATTACK" {name="SKY ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=90; accuracy=90; damage=140; max_PP=5; PP=5}
Hashtbl.add my_hash "TRANSFORM" {name="TRANSFORM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "BUBBLE" {name="BUBBLE"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=30; PP=30}
Hashtbl.add my_hash "DIZZY PUNCH" {name="DIZZY PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=10; PP=10}
Hashtbl.add my_hash "SPORE" {name="SPORE"; move_type=TGrass; status_effect=SSleep; status_probability=100; accuracy=100; damage=0; max_PP=15; PP=15}
Hashtbl.add my_hash "FLASH" {name="FLASH"; move_type=TNormal; status_effect=SNormal; status_probability=70; accuracy=70; damage=0; max_PP=20; PP=20}
Hashtbl.add my_hash "PSYWAVE" {name="PSYWAVE"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=1; max_PP=15; PP=15}
Hashtbl.add my_hash "SPLASH" {name="SPLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "ACID ARMOR" {name="ACID ARMOR"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; PP=40}
Hashtbl.add my_hash "CRABHAMMER" {name="CRABHAMMER"; move_type=TWater; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=10; PP=10}
Hashtbl.add my_hash "EXPLOSION" {name="EXPLOSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=170; max_PP=5; PP=5}
Hashtbl.add my_hash "FURY SWIPES" {name="FURY SWIPES"; move_type=TNormal; status_effect=SNormal; status_probability=80; accuracy=80; damage=18; max_PP=15; PP=15}
Hashtbl.add my_hash "BONEMERANG" {name="BONEMERANG"; move_type=TGround; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=10; PP=10}
Hashtbl.add my_hash "REST" {name="REST"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "ROCK SLIDE" {name="ROCK SLIDE"; move_type=TRock; status_effect=SNormal; status_probability=90; accuracy=90; damage=75; max_PP=10; PP=10}
Hashtbl.add my_hash "HYPER FANG" {name="HYPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=80; max_PP=15; PP=15}
Hashtbl.add my_hash "SHARPEN" {name="SHARPEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "CONVERSION" {name="CONVERSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; PP=30}
Hashtbl.add my_hash "TRI ATTACK" {name="TRI ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=10; PP=10}
Hashtbl.add my_hash "SUPER FANG" {name="SUPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=10; PP=10}
Hashtbl.add my_hash "SLASH" {name="SLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; PP=20}
Hashtbl.add my_hash "SUBSTITUTE" {name="SUBSTITUTE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; PP=10}
Hashtbl.add my_hash "STRUGGLE" {name="STRUGGLE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=10; PP=10}

let get_move name =
  Hashtbl.find my_hash name