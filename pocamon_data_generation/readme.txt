Creating Pocamon and their learnsets: 

Because we are using the Crystal (Gen 2) moveset and pokedex, we need to import the new moves. 

Run ocaml_gen.py on the new moves.asm 

For generating pokemon types, we may want to use the ascii_art.txt as our filter for pokemon so that we only get the first 151 but there are definitely other ways to go about it as well.

We are trying to convert this (base_stats.asm):

BulbasaurBaseData:: ; 0x51424
	db BULBASAUR ; 001

	db  45,  49,  49,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 31 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn MONSTER, PLANT ; egg groups

	; tmhm
	tmhm HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, DEFENSE_CURL, REST, ATTRACT, FURY_CUTTER, CUT, FLASH
	; end

and this (evos_attacks.asm): 

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
 
	db 39, SYNTHESIS
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

To this: 

 type dex_pocamon = {
      name : bytes;
      status : pStatus;
      learnable_moves : move list;
      poca_type : pType list;
      health : int;
      stats : poca_stats;
      ascii : bytes;
      }


(* the stats of a pocamon that show how powerful it is *)
type poca_stats = {
            max_HP : int;
            attack : int;
            defense : int;
            sp_defense: int;
            sp_attack: int;
            speed: int
}

The result should be OCaml code that looks like this 

module Pocamon = Map.make(pocamon)
let pocadex = Pocamon.empty

let bulbasaur_moves = "SOLARBEAM"::"SYNTHESIS"::"GROWTH"::"SWEET_SCENT"::"RAZOR_LEAF"::"SLEEP_POWDER"::"POISONPOWDER"::"VINE_WHIP"::"LEECH_SEED"::"TACKLE"::"GROWL"::"HEADBUTT"::"CURSE"::"TOXIC"::"HIDDEN_POWER"::"SUNNY_DAY"::"SWEET_SCENT"::"SNORE"::"PROTECT"::"GIGA_DRAIN"::"ENDURE"::"FRUSTRATION"::"SOLARBEAM"::"RETURN"::"MUD_SLAP"::"DOUBLE_TEAM"::"SWAGGER"::"SLEEP_TALK"::"DEFENSE_CURL"::"REST"::"ATTRACT"::"FURY_CUTTER"::"CUT"::"FLASH"::[]

let bulbasaur_stats = {max_hp=45; attack=49; defense=49; speed=45; sp_attack=65; sp_defense=65}

let pocadex = Pocamon.add "BULBASAUR" {name="BULBASAUR"; status=(Why do we have status for dex pokemon?); learnable_moves=bulbasaur_moves; health=45; stats=bulbasaur_stats; ascii="*picture*"} pocadex



