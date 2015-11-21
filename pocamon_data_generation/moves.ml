module MoveDex = Map.Make(String)
let movedex = MoveDex.emptylet movedex = MoveDex.add "POUND" {name="POUND"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; pp=35}
let movedex = MoveDex.add "KARATE CHOP" {name="KARATE CHOP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; pp=25}
let movedex = MoveDex.add "DOUBLESLAP" {name="DOUBLESLAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=10; pp=10}
let movedex = MoveDex.add "COMET PUNCH" {name="COMET PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=18; max_PP=15; pp=15}
let movedex = MoveDex.add "MEGA PUNCH" {name="MEGA PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=80; max_PP=20; pp=20}
let movedex = MoveDex.add "PAY DAY" {name="PAY DAY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=20; pp=20}
let movedex = MoveDex.add "FIRE PUNCH" {name="FIRE PUNCH"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=75; max_PP=15; pp=15}
let movedex = MoveDex.add "ICE PUNCH" {name="ICE PUNCH"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=75; max_PP=15; pp=15}
let movedex = MoveDex.add "THUNDERPUNCH" {name="THUNDERPUNCH"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=75; max_PP=15; pp=15}
let movedex = MoveDex.add "SCRATCH" {name="SCRATCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; pp=35}
let movedex = MoveDex.add "VICEGRIP" {name="VICEGRIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=55; max_PP=30; pp=30}
let movedex = MoveDex.add "GUILLOTINE" {name="GUILLOTINE"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; pp=5}
let movedex = MoveDex.add "RAZOR WIND" {name="RAZOR WIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=10; pp=10}
let movedex = MoveDex.add "SWORDS DANCE" {name="SWORDS DANCE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "CUT" {name="CUT"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=50; max_PP=30; pp=30}
let movedex = MoveDex.add "GUST" {name="GUST"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=35; pp=35}
let movedex = MoveDex.add "WING ATTACK" {name="WING ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; pp=35}
let movedex = MoveDex.add "WHIRLWIND" {name="WHIRLWIND"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "FLY" {name="FLY"; move_type=TFlying; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=15; pp=15}
let movedex = MoveDex.add "BIND" {name="BIND"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=15; max_PP=20; pp=20}
let movedex = MoveDex.add "SLAM" {name="SLAM"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=80; max_PP=20; pp=20}
let movedex = MoveDex.add "VINE WHIP" {name="VINE WHIP"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=10; pp=10}
let movedex = MoveDex.add "STOMP" {name="STOMP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "DOUBLE KICK" {name="DOUBLE KICK"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=30; max_PP=30; pp=30}
let movedex = MoveDex.add "MEGA KICK" {name="MEGA KICK"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=120; max_PP=5; pp=5}
let movedex = MoveDex.add "JUMP KICK" {name="JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=95; accuracy=95; damage=70; max_PP=25; pp=25}
let movedex = MoveDex.add "ROLLING KICK" {name="ROLLING KICK"; move_type=TFighting; status_effect=SNormal; status_probability=85; accuracy=85; damage=60; max_PP=15; pp=15}
let movedex = MoveDex.add "SAND ATTACK" {name="SAND ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "HEADBUTT" {name="HEADBUTT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=15; pp=15}
let movedex = MoveDex.add "HORN ATTACK" {name="HORN ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=25; pp=25}
let movedex = MoveDex.add "FURY ATTACK" {name="FURY ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; pp=20}
let movedex = MoveDex.add "HORN DRILL" {name="HORN DRILL"; move_type=TNormal; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; pp=5}
let movedex = MoveDex.add "TACKLE" {name="TACKLE"; move_type=TNormal; status_effect=SNormal; status_probability=95; accuracy=95; damage=35; max_PP=35; pp=35}
let movedex = MoveDex.add "BODY SLAM" {name="BODY SLAM"; move_type=TNormal; status_effect=SParalyze; status_probability=100; accuracy=100; damage=85; max_PP=15; pp=15}
let movedex = MoveDex.add "WRAP" {name="WRAP"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; pp=20}
let movedex = MoveDex.add "TAKE DOWN" {name="TAKE DOWN"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=20; pp=20}
let movedex = MoveDex.add "THRASH" {name="THRASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=20; pp=20}
let movedex = MoveDex.add "DOUBLE EDGE" {name="DOUBLE EDGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; pp=15}
let movedex = MoveDex.add "TAIL WHIP" {name="TAIL WHIP"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "POISON STING" {name="POISON STING"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=15; max_PP=35; pp=35}
let movedex = MoveDex.add "TWINEEDLE" {name="TWINEEDLE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=25; max_PP=20; pp=20}
let movedex = MoveDex.add "PIN MISSILE" {name="PIN MISSILE"; move_type=TBug; status_effect=SNormal; status_probability=85; accuracy=85; damage=14; max_PP=20; pp=20}
let movedex = MoveDex.add "LEER" {name="LEER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "BITE" {name="BITE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=25; pp=25}
let movedex = MoveDex.add "GROWL" {name="GROWL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "ROAR" {name="ROAR"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "SING" {name="SING"; move_type=TNormal; status_effect=SSleep; status_probability=55; accuracy=55; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "SUPERSONIC" {name="SUPERSONIC"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "SONICBOOM" {name="SONICBOOM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=20; pp=20}
let movedex = MoveDex.add "DISABLE" {name="DISABLE"; move_type=TNormal; status_effect=SNormal; status_probability=55; accuracy=55; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "ACID" {name="ACID"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; pp=30}
let movedex = MoveDex.add "EMBER" {name="EMBER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=40; max_PP=25; pp=25}
let movedex = MoveDex.add "FLAMETHROWER" {name="FLAMETHROWER"; move_type=TFire; status_effect=SBurn; status_probability=100; accuracy=100; damage=95; max_PP=15; pp=15}
let movedex = MoveDex.add "MIST" {name="MIST"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "WATER GUN" {name="WATER GUN"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=25; pp=25}
let movedex = MoveDex.add "HYDRO PUMP" {name="HYDRO PUMP"; move_type=TWater; status_effect=SNormal; status_probability=80; accuracy=80; damage=120; max_PP=5; pp=5}
let movedex = MoveDex.add "SURF" {name="SURF"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=95; max_PP=15; pp=15}
let movedex = MoveDex.add "ICE BEAM" {name="ICE BEAM"; move_type=TIce; status_effect=SFreeze; status_probability=100; accuracy=100; damage=95; max_PP=10; pp=10}
let movedex = MoveDex.add "BLIZZARD" {name="BLIZZARD"; move_type=TIce; status_effect=SFreeze; status_probability=90; accuracy=90; damage=120; max_PP=5; pp=5}
let movedex = MoveDex.add "PSYBEAM" {name="PSYBEAM"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "BUBBLEBEAM" {name="BUBBLEBEAM"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "AURORA BEAM" {name="AURORA BEAM"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "HYPER BEAM" {name="HYPER BEAM"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=150; max_PP=5; pp=5}
let movedex = MoveDex.add "PECK" {name="PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=35; max_PP=35; pp=35}
let movedex = MoveDex.add "DRILL PECK" {name="DRILL PECK"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=20; pp=20}
let movedex = MoveDex.add "SUBMISSION" {name="SUBMISSION"; move_type=TFighting; status_effect=SNormal; status_probability=80; accuracy=80; damage=80; max_PP=25; pp=25}
let movedex = MoveDex.add "LOW KICK" {name="LOW KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=20; pp=20}
let movedex = MoveDex.add "COUNTER" {name="COUNTER"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; pp=20}
let movedex = MoveDex.add "SEISMIC TOSS" {name="SEISMIC TOSS"; move_type=TFighting; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=20; pp=20}
let movedex = MoveDex.add "STRENGTH" {name="STRENGTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; pp=15}
let movedex = MoveDex.add "ABSORB" {name="ABSORB"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; pp=20}
let movedex = MoveDex.add "MEGA DRAIN" {name="MEGA DRAIN"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=10; pp=10}
let movedex = MoveDex.add "LEECH SEED" {name="LEECH SEED"; move_type=TGrass; status_effect=SNormal; status_probability=90; accuracy=90; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "GROWTH" {name="GROWTH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "RAZOR LEAF" {name="RAZOR LEAF"; move_type=TGrass; status_effect=SNormal; status_probability=95; accuracy=95; damage=55; max_PP=25; pp=25}
let movedex = MoveDex.add "SOLARBEAM" {name="SOLARBEAM"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=120; max_PP=10; pp=10}
let movedex = MoveDex.add "POISONPOWDER" {name="POISONPOWDER"; move_type=TPoison; status_effect=SPoison; status_probability=75; accuracy=75; damage=0; max_PP=35; pp=35}
let movedex = MoveDex.add "STUN SPORE" {name="STUN SPORE"; move_type=TGrass; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "SLEEP POWDER" {name="SLEEP POWDER"; move_type=TGrass; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "PETAL DANCE" {name="PETAL DANCE"; move_type=TGrass; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; pp=20}
let movedex = MoveDex.add "STRING SHOT" {name="STRING SHOT"; move_type=TBug; status_effect=SNormal; status_probability=95; accuracy=95; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "DRAGON RAGE" {name="DRAGON RAGE"; move_type=TDragon; status_effect=SNormal; status_probability=100; accuracy=100; damage=1; max_PP=10; pp=10}
let movedex = MoveDex.add "FIRE SPIN" {name="FIRE SPIN"; move_type=TFire; status_effect=SNormal; status_probability=70; accuracy=70; damage=15; max_PP=15; pp=15}
let movedex = MoveDex.add "THUNDERSHOCK" {name="THUNDERSHOCK"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=40; max_PP=30; pp=30}
let movedex = MoveDex.add "THUNDERBOLT" {name="THUNDERBOLT"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=95; max_PP=15; pp=15}
let movedex = MoveDex.add "THUNDER WAVE" {name="THUNDER WAVE"; move_type=TElectric; status_effect=SParalyze; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "THUNDER" {name="THUNDER"; move_type=TElectric; status_effect=SParalyze; status_probability=70; accuracy=70; damage=120; max_PP=10; pp=10}
let movedex = MoveDex.add "ROCK THROW" {name="ROCK THROW"; move_type=TRock; status_effect=SNormal; status_probability=65; accuracy=65; damage=50; max_PP=15; pp=15}
let movedex = MoveDex.add "EARTHQUAKE" {name="EARTHQUAKE"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; pp=10}
let movedex = MoveDex.add "FISSURE" {name="FISSURE"; move_type=TGround; status_effect=SNormal; status_probability=30; accuracy=30; damage=1; max_PP=5; pp=5}
let movedex = MoveDex.add "DIG" {name="DIG"; move_type=TGround; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=10; pp=10}
let movedex = MoveDex.add "TOXIC" {name="TOXIC"; move_type=TPoison; status_effect=SPoison; status_probability=85; accuracy=85; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "CONFUSION" {name="CONFUSION"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=25; pp=25}
let movedex = MoveDex.add "PSYCHIC M" {name="PSYCHIC M"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=90; max_PP=10; pp=10}
let movedex = MoveDex.add "HYPNOSIS" {name="HYPNOSIS"; move_type=TPsychic; status_effect=SSleep; status_probability=60; accuracy=60; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "MEDITATE" {name="MEDITATE"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "AGILITY" {name="AGILITY"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "QUICK ATTACK" {name="QUICK ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=40; max_PP=30; pp=30}
let movedex = MoveDex.add "RAGE" {name="RAGE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=20; pp=20}
let movedex = MoveDex.add "TELEPORT" {name="TELEPORT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "NIGHT SHADE" {name="NIGHT SHADE"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "MIMIC" {name="MIMIC"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "SCREECH" {name="SCREECH"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "DOUBLE TEAM" {name="DOUBLE TEAM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "RECOVER" {name="RECOVER"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "HARDEN" {name="HARDEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "MINIMIZE" {name="MINIMIZE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "SMOKESCREEN" {name="SMOKESCREEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "CONFUSE RAY" {name="CONFUSE RAY"; move_type=TGhost; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "WITHDRAW" {name="WITHDRAW"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "DEFENSE CURL" {name="DEFENSE CURL"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "BARRIER" {name="BARRIER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "LIGHT SCREEN" {name="LIGHT SCREEN"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "HAZE" {name="HAZE"; move_type=TIce; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "REFLECT" {name="REFLECT"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "FOCUS ENERGY" {name="FOCUS ENERGY"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "BIDE" {name="BIDE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "METRONOME" {name="METRONOME"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "MIRROR MOVE" {name="MIRROR MOVE"; move_type=TFlying; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "SELFDESTRUCT" {name="SELFDESTRUCT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=130; max_PP=5; pp=5}
let movedex = MoveDex.add "EGG BOMB" {name="EGG BOMB"; move_type=TNormal; status_effect=SNormal; status_probability=75; accuracy=75; damage=100; max_PP=10; pp=10}
let movedex = MoveDex.add "LICK" {name="LICK"; move_type=TGhost; status_effect=SParalyze; status_probability=100; accuracy=100; damage=20; max_PP=30; pp=30}
let movedex = MoveDex.add "SMOG" {name="SMOG"; move_type=TPoison; status_effect=SPoison; status_probability=70; accuracy=70; damage=20; max_PP=20; pp=20}
let movedex = MoveDex.add "SLUDGE" {name="SLUDGE"; move_type=TPoison; status_effect=SPoison; status_probability=100; accuracy=100; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "BONE CLUB" {name="BONE CLUB"; move_type=TGround; status_effect=SNormal; status_probability=85; accuracy=85; damage=65; max_PP=20; pp=20}
let movedex = MoveDex.add "FIRE BLAST" {name="FIRE BLAST"; move_type=TFire; status_effect=SBurn; status_probability=85; accuracy=85; damage=120; max_PP=5; pp=5}
let movedex = MoveDex.add "WATERFALL" {name="WATERFALL"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=15; pp=15}
let movedex = MoveDex.add "CLAMP" {name="CLAMP"; move_type=TWater; status_effect=SNormal; status_probability=75; accuracy=75; damage=35; max_PP=10; pp=10}
let movedex = MoveDex.add "SWIFT" {name="SWIFT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=60; max_PP=20; pp=20}
let movedex = MoveDex.add "SKULL BASH" {name="SKULL BASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; pp=15}
let movedex = MoveDex.add "SPIKE CANNON" {name="SPIKE CANNON"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; pp=15}
let movedex = MoveDex.add "CONSTRICT" {name="CONSTRICT"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=10; max_PP=35; pp=35}
let movedex = MoveDex.add "AMNESIA" {name="AMNESIA"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "KINESIS" {name="KINESIS"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "SOFTBOILED" {name="SOFTBOILED"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "HI JUMP KICK" {name="HI JUMP KICK"; move_type=TFighting; status_effect=SNormal; status_probability=90; accuracy=90; damage=85; max_PP=20; pp=20}
let movedex = MoveDex.add "GLARE" {name="GLARE"; move_type=TNormal; status_effect=SParalyze; status_probability=75; accuracy=75; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "DREAM EATER" {name="DREAM EATER"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=100; max_PP=15; pp=15}
let movedex = MoveDex.add "POISON GAS" {name="POISON GAS"; move_type=TPoison; status_effect=SPoison; status_probability=55; accuracy=55; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "BARRAGE" {name="BARRAGE"; move_type=TNormal; status_effect=SNormal; status_probability=85; accuracy=85; damage=15; max_PP=20; pp=20}
let movedex = MoveDex.add "LEECH LIFE" {name="LEECH LIFE"; move_type=TBug; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=15; pp=15}
let movedex = MoveDex.add "LOVELY KISS" {name="LOVELY KISS"; move_type=TNormal; status_effect=SSleep; status_probability=75; accuracy=75; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "SKY ATTACK" {name="SKY ATTACK"; move_type=TFlying; status_effect=SNormal; status_probability=90; accuracy=90; damage=140; max_PP=5; pp=5}
let movedex = MoveDex.add "TRANSFORM" {name="TRANSFORM"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "BUBBLE" {name="BUBBLE"; move_type=TWater; status_effect=SNormal; status_probability=100; accuracy=100; damage=20; max_PP=30; pp=30}
let movedex = MoveDex.add "DIZZY PUNCH" {name="DIZZY PUNCH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=10; pp=10}
let movedex = MoveDex.add "SPORE" {name="SPORE"; move_type=TGrass; status_effect=SSleep; status_probability=100; accuracy=100; damage=0; max_PP=15; pp=15}
let movedex = MoveDex.add "FLASH" {name="FLASH"; move_type=TNormal; status_effect=SNormal; status_probability=70; accuracy=70; damage=0; max_PP=20; pp=20}
let movedex = MoveDex.add "PSYWAVE" {name="PSYWAVE"; move_type=TPsychic; status_effect=SNormal; status_probability=80; accuracy=80; damage=1; max_PP=15; pp=15}
let movedex = MoveDex.add "SPLASH" {name="SPLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "ACID ARMOR" {name="ACID ARMOR"; move_type=TPoison; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=40; pp=40}
let movedex = MoveDex.add "CRABHAMMER" {name="CRABHAMMER"; move_type=TWater; status_effect=SNormal; status_probability=85; accuracy=85; damage=90; max_PP=10; pp=10}
let movedex = MoveDex.add "EXPLOSION" {name="EXPLOSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=170; max_PP=5; pp=5}
let movedex = MoveDex.add "FURY SWIPES" {name="FURY SWIPES"; move_type=TNormal; status_effect=SNormal; status_probability=80; accuracy=80; damage=18; max_PP=15; pp=15}
let movedex = MoveDex.add "BONEMERANG" {name="BONEMERANG"; move_type=TGround; status_effect=SNormal; status_probability=90; accuracy=90; damage=50; max_PP=10; pp=10}
let movedex = MoveDex.add "REST" {name="REST"; move_type=TPsychic; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "ROCK SLIDE" {name="ROCK SLIDE"; move_type=TRock; status_effect=SNormal; status_probability=90; accuracy=90; damage=75; max_PP=10; pp=10}
let movedex = MoveDex.add "HYPER FANG" {name="HYPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=80; max_PP=15; pp=15}
let movedex = MoveDex.add "SHARPEN" {name="SHARPEN"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "CONVERSION" {name="CONVERSION"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=30; pp=30}
let movedex = MoveDex.add "TRI ATTACK" {name="TRI ATTACK"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=80; max_PP=10; pp=10}
let movedex = MoveDex.add "SUPER FANG" {name="SUPER FANG"; move_type=TNormal; status_effect=SNormal; status_probability=90; accuracy=90; damage=1; max_PP=10; pp=10}
let movedex = MoveDex.add "SLASH" {name="SLASH"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=70; max_PP=20; pp=20}
let movedex = MoveDex.add "SUBSTITUTE" {name="SUBSTITUTE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=0; max_PP=10; pp=10}
let movedex = MoveDex.add "STRUGGLE" {name="STRUGGLE"; move_type=TNormal; status_effect=SNormal; status_probability=100; accuracy=100; damage=50; max_PP=10; pp=10}
