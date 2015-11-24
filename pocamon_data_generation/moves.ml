module MoveDex = Map.Make(String)
let movedex = MoveDex.empty
let movedex = MoveDex.add "POUND" {name="POUND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=35; effect=MNone; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "KARATE CHOP" {name="KARATE CHOP"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=50; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLESLAP" {name="DOUBLESLAP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=10; effect=MLoop; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "COMET PUNCH" {name="COMET PUNCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=18; max_pp=15; effect=MLoop; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA PUNCH" {name="MEGA PUNCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=80; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SCRATCH" {name="SCRATCH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=35; effect=MNone; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "VICEGRIP" {name="VICEGRIP"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=55; max_pp=30; effect=MNone; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "GUILLOTINE" {name="GUILLOTINE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=30; damage=0; max_pp=5; effect=Mohko; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAZOR WIND" {name="RAZOR WIND"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=80; max_pp=10; effect=MCharg; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWORDS DANCE" {name="SWORDS DANCE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; effect=MAttack 2; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "CUT" {name="CUT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=95; damage=50; max_pp=30; effect=MNone; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "WING ATTACK" {name="WING ATTACK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=35; effect=MNone; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLY" {name="FLY"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=95; damage=70; max_pp=15; effect=MChargeNoHit; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLAM" {name="SLAM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=80; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "VINE WHIP" {name="VINE WHIP"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=35; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "STOMP" {name="STOMP"; move_type=TNormal; status_effect=MNormal; status_probability=30; accuracy=100; damage=65; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLE KICK" {name="DOUBLE KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=30; max_pp=30; effect=MLoop; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA KICK" {name="MEGA KICK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=120; max_pp=5; effect=MNone; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "JUMP KICK" {name="JUMP KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=95; damage=70; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "HORN ATTACK" {name="HORN ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=65; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY ATTACK" {name="FURY ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=20; effect=MLoop; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HORN DRILL" {name="HORN DRILL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=30; damage=1; max_pp=5; effect=Mohko; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "TACKLE" {name="TACKLE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=95; damage=35; max_pp=35; effect=MNone; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "TAKE DOWN" {name="TAKE DOWN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=90; max_pp=20; effect=MRecoil; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "DOUBLE EDGE" {name="DOUBLE EDGE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=120; max_pp=15; effect=MRecoil; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "TWINEEDLE" {name="TWINEEDLE"; move_type=TBug; status_effect=MNormal; status_probability=20; accuracy=100; damage=25; max_pp=20; effect=MLoop; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "PIN MISSILE" {name="PIN MISSILE"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=85; damage=14; max_pp=20; effect=MLoop; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "ACID" {name="ACID"; move_type=TPoison; status_effect=MNormal; status_probability=10; accuracy=100; damage=40; max_pp=30; effect=MDefense -1; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "WATER GUN" {name="WATER GUN"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYDRO PUMP" {name="HYDRO PUMP"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=80; damage=120; max_pp=5; effect=MNone; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SURF" {name="SURF"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=95; max_pp=15; effect=MNone; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "BUBBLEBEAM" {name="BUBBLEBEAM"; move_type=TWater; status_effect=MNormal; status_probability=10; accuracy=100; damage=65; max_pp=20; effect=MSpeed -1; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HYPER BEAM" {name="HYPER BEAM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=90; damage=150; max_pp=5; effect=MCharg; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "PECK" {name="PECK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=35; max_pp=35; effect=MNone; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "DRILL PECK" {name="DRILL PECK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SUBMISSION" {name="SUBMISSION"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=80; damage=80; max_pp=25; effect=MRecoil; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "STRENGTH" {name="STRENGTH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=15; effect=MNone; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "ABSORB" {name="ABSORB"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=20; effect=MLeech; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGA DRAIN" {name="MEGA DRAIN"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=10; effect=MLeech; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "GROWTH" {name="GROWTH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MSpecAttack 1; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "RAZOR LEAF" {name="RAZOR LEAF"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=95; damage=55; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "SOLARBEAM" {name="SOLARBEAM"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=120; max_pp=10; effect=MCharg; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "THUNDER" {name="THUNDER"; move_type=TElectric; status_effect=MNormal; status_probability=30; accuracy=70; damage=120; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "ROCK THROW" {name="ROCK THROW"; move_type=TRock; status_effect=MNormal; status_probability=0; accuracy=90; damage=50; max_pp=15; effect=MNone; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "FISSURE" {name="FISSURE"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=30; damage=1; max_pp=5; effect=Mohko; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "DIG" {name="DIG"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=10; effect=MChargeNoHit; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "PSYCHIC" {name="PSYCHIC"; move_type=TPsychic; status_effect=MNormal; status_probability=10; accuracy=100; damage=90; max_pp=10; effect=MSpecialDefense -1; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEDITATE" {name="MEDITATE"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MAttack 1; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "AGILITY" {name="AGILITY"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; effect=MSpeed 2; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "QUICK ATTACK" {name="QUICK ATTACK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=30; effect=MNone; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SCREECH" {name="SCREECH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=0; max_pp=40; effect=MDefense -2; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "RECOVER" {name="RECOVER"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; effect=MRecover; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "HARDEN" {name="HARDEN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; effect=MDefense 1; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "WITHDRAW" {name="WITHDRAW"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MDefense 1; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "DEFENSE CURL" {name="DEFENSE CURL"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MDefense 2; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "BARRIER" {name="BARRIER"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; effect=MDefense 2; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SELFDESTRUCT" {name="SELFDESTRUCT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=200; max_pp=5; effect=MExplode; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "EGG BOMB" {name="EGG BOMB"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=75; damage=100; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "WATERFALL" {name="WATERFALL"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=15; effect=MNone; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SWIFT" {name="SWIFT"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPIKE CANNON" {name="SPIKE CANNON"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=15; effect=MLoop; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "CONSTRICT" {name="CONSTRICT"; move_type=TNormal; status_effect=MNormal; status_probability=10; accuracy=100; damage=10; max_pp=35; effect=MSpeed -1; pp=35; move_category=ESpecial} movedex
let movedex = MoveDex.add "AMNESIA" {name="AMNESIA"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; effect=MSpec Defense 2; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "SOFTBOILED" {name="SOFTBOILED"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; effect=MRecover; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "HI JUMP KICK" {name="HI JUMP KICK"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=90; damage=85; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "BARRAGE" {name="BARRAGE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=85; damage=15; max_pp=20; effect=MLoop; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "LEECH LIFE" {name="LEECH LIFE"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=100; damage=20; max_pp=15; effect=MLeech; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "SKY ATTACK" {name="SKY ATTACK"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=90; damage=140; max_pp=5; effect=MCharg; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "BUBBLE" {name="BUBBLE"; move_type=TWater; status_effect=MNormal; status_probability=10; accuracy=100; damage=20; max_pp=30; effect=MSpeed -1; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SPLASH" {name="SPLASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MNone; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "ACID ARMOR" {name="ACID ARMOR"; move_type=TPoison; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=40; effect=MDefense 2; pp=40; move_category=ESpecial} movedex
let movedex = MoveDex.add "CRABHAMMER" {name="CRABHAMMER"; move_type=TWater; status_effect=MNormal; status_probability=0; accuracy=85; damage=90; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "EXPLOSION" {name="EXPLOSION"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=250; max_pp=5; effect=MExplode; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY SWIPES" {name="FURY SWIPES"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=80; damage=18; max_pp=15; effect=MLoop; pp=15; move_category=ESpecial} movedex
let movedex = MoveDex.add "BONEMERANG" {name="BONEMERANG"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=90; damage=50; max_pp=10; effect=MLoop; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "REST" {name="REST"; move_type=TPsychic; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; effect=MRecover; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "SHARPEN" {name="SHARPEN"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=30; effect=MAttack 1; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "SLASH" {name="SLASH"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=70; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "STRUGGLE" {name="STRUGGLE"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=50; max_pp=1; effect=MRecoil; pp=1; move_category=ESpecial} movedex
let movedex = MoveDex.add "FLAME WHEEL" {name="FLAME WHEEL"; move_type=TFire; status_effect=MNormal; status_probability=10; accuracy=100; damage=60; max_pp=25; effect=MNone; pp=25; move_category=ESpecial} movedex
let movedex = MoveDex.add "AEROBLAST" {name="AEROBLAST"; move_type=TFlying; status_effect=MNormal; status_probability=0; accuracy=95; damage=100; max_pp=5; effect=MNone; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "MACH PUNCH" {name="MACH PUNCH"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=40; max_pp=30; effect=MNone; pp=30; move_category=ESpecial} movedex
let movedex = MoveDex.add "BONE RUSH" {name="BONE RUSH"; move_type=TGround; status_effect=MNormal; status_probability=0; accuracy=80; damage=25; max_pp=10; effect=MLoop; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "GIGA DRAIN" {name="GIGA DRAIN"; move_type=TGrass; status_effect=MNormal; status_probability=0; accuracy=100; damage=60; max_pp=5; effect=MLeech; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "CHARM" {name="CHARM"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=20; effect=MAttack -2; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MILK DRINK" {name="MILK DRINK"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=0; max_pp=10; effect=MRecover; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "FURY CUTTER" {name="FURY CUTTER"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=95; damage=10; max_pp=20; effect=MNone; pp=20; move_category=ESpecial} movedex
let movedex = MoveDex.add "MEGAHORN" {name="MEGAHORN"; move_type=TBug; status_effect=MNormal; status_probability=0; accuracy=85; damage=120; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "VITAL THROW" {name="VITAL THROW"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=100; damage=70; max_pp=10; effect=MNone; pp=10; move_category=ESpecial} movedex
let movedex = MoveDex.add "CROSS CHOP" {name="CROSS CHOP"; move_type=TFighting; status_effect=MNormal; status_probability=0; accuracy=80; damage=100; max_pp=5; effect=MNone; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "EXTREMESPEED" {name="EXTREMESPEED"; move_type=TNormal; status_effect=MNormal; status_probability=0; accuracy=100; damage=80; max_pp=5; effect=MNone; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "ANCIENTPOWER" {name="ANCIENTPOWER"; move_type=TRock; status_effect=MNormal; status_probability=10; accuracy=100; damage=60; max_pp=5; effect=MAllStatsUp; pp=5; move_category=ESpecial} movedex
let movedex = MoveDex.add "SHADOW BALL" {name="SHADOW BALL"; move_type=TGhost; status_effect=MNormal; status_probability=20; accuracy=100; damage=80; max_pp=15; effect=MSpecialDefense -1; pp=15; move_category=ESpecial} movedex
