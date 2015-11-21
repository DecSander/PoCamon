open Types

type attack_status = {
      atk_eff : pEffect;
      self_status_change : bool * pStatus;
      opp_status_change : bool * pStatus;
      missed : bool;
}

type move_status = Attack_Status of attack_status | Switch_Status

type battle_status = {
      p1_went_first : bool;
      p1_move_status : move_status;
      p2_move_status : move_status;
}

let calc_type_effectiveness atk_type def_type =
  match atk_type with
    | TNormal ->
      match def_type with
      | TRock ->  0.5
      | TSteel -> 0.5
      | TGhost -> 0
      | _ -> 1.
    | TFire ->
      match def_type with
      | TFire -> 0.5
      | TWater -> 0.5
      | TRock -> 0.5
      | TDragon -> 0.5
      | TGrass -> 2.
      | TIce -> 2.
      | TBug -> 2.
      | TSteel -> 2.
      | _ -> 1.
    | TWater ->
      match def_type with
      | TWater -> 0.5
      | TGrass -> 0.5
      | TDragon -> 0.5
      | TFire -> 2.
      | TGround -> 2.
      | TRock -> 2.
      | _ -> 1.
    | TElectric ->
      match def_type with
      | TElectric -> 0.5
      | TGrass -> 0.5
      | TDragon -> 0.5
      | TWater -> 2.
      | TFlying -> 2.
      | TGround -> 0.
      | _ -> 1.
    | TGrass ->
      match def_type with
      | TFire -> 0.5
      | TGrass -> 0.5
      | TPoison -> 0.5
      | TFlying -> 0.5
      | TBug -> 0.5
      | TDragon -> 0.5
      | _ -> 1.
    | TIce ->
      match def_type with
      | TFire | TWater| TIce | TSteel -> 0.5
      | TGrass | TGround | TFlying | TDragon - > 2.
      | _ -> 1.
    | TFighting ->
      match def_type with
      | TNormal | TIce | TRock -> 2.
      | TPoison | TFlying | TPsychic | TBug -> 0.5
      | TGhost -> 0.
      | _ -> 1.
    | TPoison ->
      match def_type with
      | TGrass | TBug -> 2.
      | TPoison | TGround | TRock | TGhost -> 0.5
      | _ -> 1.
    | TGround ->
      match def_type with
      | TFire | TElectric | TPoison | TRock -> 2.
      | TGrass | TBug -> 0.5
      | TFlying -> 0.
      | _ -> 1.
    | TFlying ->
      match def_type with
      | TGrass | TFighting | TBug -> 2.
      | TElectric | TRock -> 0.5
      | _ -> 1.
    | TPsychic ->
      match def_type with
      | TFighting | TPoison -> 2.
      | TPsychic -> 0.5
      | _ -> 1.
    | TBug ->
      match def_type with
      | TFire | TFighting | TFlying -> 0.5
      | TGrass | TPoison | TPsychic -> 2.
      | _ -> 1.
    | TRock ->
      match def_type with
      | TFire | TIce | TFlying | TBug -> 2.
      | TFighting | TGround -> 0.5
      | _ -> 1.
    | TGhost ->
      match def_type with
      | TNormal | TPsychic -> 0.
      | TGhost -> 2.
      | _ -> 1.
    | TDragon ->
      match def_type with
      | TDragon -> 2.
      | _ -> 1.

let calc_damage atk_poca def_poca move =
  let type_effectiveness =
      if (fst def_poca.poca_type) = (snd def_poca.poca_type) then
        calc_type_effectiveness move.move_type (fst def_poca.poca_type)
      else calc_type_effectiveness move.move_type (fst def_poca.poca_type) *.
        calc_type_effectiveness move.move_type (snd def_poca.poca_type) in

  let STAB_bonus =
    if (fst atk_poca.poca_type) = move.move_type
    || (snd atk_poca.poca_type) = move.move_type then 1.5 else 1. in

  let burn_multiplier =
    match atk_poca.status with
    | SBurn -> 0.5
    | _ -> 1. in

  (* it is assumed that every pocamon is level 100 *)
  let assumed_level = 100. in

  let atk_def_multiplier =
    match move.move_category with
    | EPhysical -> float_of_int(atk_poca.stats.attack)
      /. float_of_int(def_poca.stats.defense)
    | ESpecial -> float_of_int(atk_poca.stats.sp_attack)
      /. float_of_int(def_poca.stats.sp_defense) in

  let base_pwr = float_of_int(move.damage) in

  let modifiers = burn_multiplier *. STAB_bonus *. type_effectiveness
    (* status effects *)
  let damage =
    ((2. *. assumed_level +. 10.) /. 250) *.
    (atk_def_multiplier) *. base_pwr +. 2.)*.
    modifiers in
  damage

(*
* Applys the single attack to the game state
*)
let apply_attack atk_state def_state move g_state * battle_status =

  let atk_poca = atk_state.active_pocamon in
  let def_poca = def_state.active_pocamon in

  match atk_poca.status with
  | SNormal | SPoison | SBurn  | SParalyze | SSleep 0 | SFreeze 0 ->

  | SSleep t | SFreeze t ->
    let p_move_status = Attack_Status {atk_eff=ENormal;  }


(*
* Switches the active pocamon of the player making the move
*)
let switch_pokemon switch_poca p_state =

(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
let do_single_move player_state foe_state action g_state =
  match action with
  | Move m -> apply_attack player_state foe_state m g_state
  | Switch s_p -> switch_pokemon s_p p_state

let apply_fight_sequnce g_state p1_action p2_action =

  let p1 = g_state.player_one in
  let p1_poca = p1.active_pocamon in
  let p1_status_speed_multiplier =
    match p1_poca.status with
    | SParalyze -> 0.25
    | _ -> 1. in
  let p1_switch_priority =
    match p1_action with
    | Move _ -> false
    | Switch _ -> true in

  let p2 = g_state.player_two in
  let p2_poca = p2.active_pocamon in
  let p2_status_speed_multiplier =
    match p2_poca.status with
    | SParalyze -> 0.25
    | _ -> 1. in
  let p2_switch_priority =
    match p2_action with
    | Move _ -> false
    | Switch _ -> true in

  let p1_goes_first =
    if (((float_of_int p1_poca.status.speed)*.p1_status_speed_multiplier >=
      (float_of_int p2_poca.status.speed) *.p2_status_speed_multiplier)
      && not p2_switch_priority) || p1_switch_priority
    then true else false in

  if p1_goes_first
  then
    let new_g_state = do_single_move p1 p2 p1_action g_state in
    let final_g_state = do_single_move p2 p1 p2_action new_g_state in
    final_g_state
  else
    let new_g_state = do_single_move p2 p1 p2_action g_state in
    let final_g_state = do_single_move p1 p2 p1_action new_g_state in
    final_g_state