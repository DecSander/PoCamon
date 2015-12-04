s = '''Pound
Karate Chop
Mega Punch
Scratch
Vicegrip
Cut
Wing Attack
Slam
Vine Whip
Mega Kick
Horn Attack
Tackle
Water Gun
Hydro Pump
Surf
Peck
Drill Peck
Strength
Razor Leaf
Rock Throw
Egg Bomb
Waterfall
Crabhammer
Slash
Aeroblast
Megahorn
Cross Chop
Swift
Faint Attack
Vital Throw
Jump Kick
Hi Jump Kick
Quick Attack
Mach Punch
Extremespeed
Fury Cutter
Normal Hit
Splash
Stomp
Thunder
Flame Wheel
FirePunch
Ember
Flamethrower
FireBlast
IcePunch
IceBeam
Blizzard
PowderSnow
Thunderpunch
BodySlam
Thundershock
Thunderbolt
Lick
ZapCannon
Spark
Dragonbreath
Sing
SleepPowder
Hypnosis
LovelyKiss
Spore
PoisonSting
Smog
Sludge
SludgeBomb
Toxic
Poisonpowder
PoisonGas
StunSpore
ThunderWave
Glare
>MNone

Absorb
Mega Drain
Leech Life
Giga Drain
Leech Hit
>MLeech

Selfdestruct
Explosion
>MExplode

Meditate
Sharpen
>MAttack 1

Harden
Withdraw
>MDefense 1

Growth
>MSpecAttack 1

Swords Dance
>MAttack 2

Barrier
Acid Armor
Defense Curl
>MDefense 2

Agility
>MSpeed 2

Amnesia
>MSpecDefense 2

Growl
>MAttack -1

Tail Whip
Leer
>MDefense -1

String Shot
>MSpeed -1

Charm
>MAttack -2

Screech
>MDefense -2

CottonSpore
ScaryFace
>MSpeed -2

AuroraBeam
>MAttack -1

Acid
IronTail
RockSmash
>MDefense -1

Bubblebeam
Constrict
Bubble
IcyWind
>MSpeed -1

Psychic
Crunch
Shadow Ball
>MSpecDefense -1

Ancientpower
>MAllStatsUp

Guillotine
Horn Drill
Fissure
>Mohko

Take Down
Double Edge
Submission
Struggle
>MRecoil

Recover
Softboiled
Rest
Milk Drink
>MRecover

Fly
Dig
>MChargeNoHit

Solarbeam
Sky Attack
Razor Wind
Hyper Beam
>MCharge

Supersonic
ConfuseRay
SweetKiss
Psybeam
Confusion
DizzyPunch
Dynamicpunch
>DoConfuse
'''
s = s.split("\n")
i=0
while i < len(s):
	if(">" in s[i] or len(s[i])< 2):
		del s[i]
	else:
		s[i] = s[i].upper()
		i += 1
print s