(*
* A status that a pocamon can have - each pocamon defaults to normal status
* which can be changed via moves and each have different effects
*)
type pStatus = SNormal | SPoison | SBurn | SSleep | SParalyze | SFreeze
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
          move_type : poca_type;
          status_effect : status;
          status_probability : float;
          accuracy : float;
          damage : int;
          max_PP : int;
          PP : int
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
      status : status;
      moves : move list;
      poca_type : poca_type list;
      health : int;
      stats : poca_stats;
      ascii : bytes;
      moves : move list;
      }

(* Returns pocamon if pocamon with given name exists. Raises failure otherwise *)
val get_pocamon: string -> pocamon 

(* Returns move if move with given name exists.Raises failure otherwise *)
val get_move: string -> move 

