(*
* A status that a pocamon can have - each pocamon defaults to normal status
* which can be changed via moves and each have different effects
*)
type pStatus = SNormal | SPoison | SBurn | SSleep of int | SParalyze | SFreeze of int
(*
* The type of a pocamon or a move, which is used to determine effectiveness
*)
type pType = TNormal | TFire | TWater | TElectric | TGrass
            | TIce | TFighting | TPoison | TGround | TFlying
            | TPsychic | TBug | TRock | TGhost | TDragon

(*
* The effectiveness of a move
*)
type pEffect = ESuper | ENormal | ENotVery

(*
* Calculates damage modifier from effectiveness
*)
val effect_to_float : pEffect -> float

(*
* A move, representing a move that a pocamon can use that can be chosen by
* a player for the action if the active pocamon has that move
*)
type move = {
          name : bytes;
          move_type : pType;
          status_effect : pStatus;
          status_probability : int;
          accuracy : int;
          damage : int;
          max_pp : int;
          pp : int
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


(*
* A pocamon and associated information
*)
type pocamon = {
      name : bytes;
      status : pStatus;
      moves : move list;
      poca_type : pType * pType;
      health : int;
      stats : poca_stats;
      ascii : bytes;
      }

 type dex_pocamon = {
      name : bytes;
      status : pStatus;
      learnable_moves : move list;
      poca_type : pType list;
      health : int;
      stats : poca_stats;
      ascii : bytes;
      }

(*
* An action that the player can take as his/her turn -
* Use a pocamon's move, or switch pocamon
*)
type action = Move of move | Switch of pocamon * pocamon

(*
* Current state information about a player
*)
type player_state = {
        name : bytes;
        active_pocamon : pocamon;
        pocamon_list : pocamon list;
        is_computer : bool
  }

(*
* Info that is available to both players during each of their turns
*)
type public_info = {
      player_one_active_pocamon : pocamon;
      player_two_active_pocamon : pocamon;
      player_one_remaining_pocamon : int;
      player_two_remaining_pocamon : int
}

(*
* The overall state of the game, containing information on both players and
* the general state of the battle
*)
type game_state = {
      player_one : player_state;
      player_two : player_state;
      battle_info : public_info
      }

type moveName = string
type damage = int
type playerName = string
type pocamonName = string

type battle_status =
| BNormal of pocamon * moveName * pEffect * damage * pStatus
| BChangePocamon of playerName * pocamonName
| BFaint of pocamonName
