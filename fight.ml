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
      | TRock | TSteel -> 0.5
      | TGhost -> 0
      | _ -> 1.
    | TFire ->
      match def_type with
      | TFire | TWater | TRock | TDragon -> 0.5
      | TGrass TIce | TBug | TSteel -> 2.
      | _ -> 1.
    | TWater ->
      match def_type with
      | TWater | TGrass | TDragon -> 0.5
      | TFire | TGround | TRock -> 2.
      | _ -> 1.
    | TElectric ->
      match def_type with
      | TElectric | TGrass | TDragon -> 0.5
      | TWater | TFlying -> 2.
      | TGround -> 0.
      | _ -> 1.
    | TGrass ->
      match def_type with
      | TFire | TGrass | TPoison | TFlying | TBug | TDragon -> 0.5
      | TWater | TGround | TRock -> 2.
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

  let () = Random.self_init() in

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

  let rand_mod = 0.85 +. (Random.float 0.15)

  let modifiers = burn_multiplier *. STAB_bonus *.
                  type_effectiveness *. rand_mod
    (* status effects *)
  let damage =
    ((2. *. assumed_level +. 10.) /. 250) *.
    (atk_def_multiplier) *. base_pwr +. 2.)*.
    modifiers in
  damage, type_effectiveness

let mStatus_to_pStatus move_status =
  | MNormal -> SNormal
  | MPoison -> SPoison
  | MBurn -> SBurn
  | MSleep -> SSleep (Random.int 2) + 3
  | MParalyze -> SParalyze
  | MFreeze -> SFreeze (Random.int 2) + 3



(*
* Applys the single attack to the game state
*)
let apply_attack atk_state def_state move p1_is_atk g_state =

  let () = Random.self_init() in

  let atk_poca = atk_state.active_pocamon in
  let def_poca = def_state.active_pocamon in

  match atk_poca.status with
  | SNormal | SPoison | SBurn  | SParalyze | SSleep 0 | SFreeze 0 ->
    let is_paralyzed =
      match atk_poca.status with
      | SParalyze -> (Random.float 1.) <= 0.25
      | _ -> false in

    let new_status_change =
      match atk_poca.status with
      | SSleep 0 | SFreeze 0 -> (true, SNormal)
      | _ -> (false, atk_poca.status) in

     let g_state' =
      match atk_poca.status with
      | SSleep 0 | SFreeze 0 ->
        let atk_poca' = {atk_poca with status=SNormal} in
        let atk_state' = {atk_state with active_pocamon=atk_poca'} in
        if p1_is_atk then {g_state with player_one=atk_state'}
        else {g_state with player_two=atk_state'} in
      | _ -> g_state in


    if is_paralyzed then
      begin
      let p_move_status =
      Attack_Status {atk_eff = ENormal;
                     self_status_change = (false, SParalyze);
                     opp_status_change = (false, def_poca.status);
                     missed = false } in
      (g_state', p_move_status)
      end
    else
      begin

      let missed = (Random.int 100) > move.accuracy in

      if missed then
        begin
        let p_move_status =
          Attack_Status {atk_eff = ENormal;
                     self_status_change = new_status_change;
                     opp_status_change = (false, def_poca.status);
                     missed = true } in
        (g_state', p_move_status)
        end
      else
        begin

        let damage, damage_mult = calc_damage atk_poca def_poca move in

        let type_eff = if (damage_mult -. 1) > 0.01 then ESuper
          else if (damage_mult -. 1) < -0.25 then ENotVery else ENormal in

        let def_poca_health = def_poca.health - int_of_float(damage) in

        let status_eff =
          (Random.int 100) <= move.status_probability in

        let new_status = if status_eff
          then mStatus_to_pStatus move.status_effect else def_poca.status in

        let def_poca' =
          {def_poca with health=def_poca_health; status=new_status} in


        let def_state' = {def_state with active_pocamon=def_poca'} in
        let g_state'' = if not p1_is_atk
          then {g_state with player_one=def_state'}
          else {g_state with player_two=def_state'} in

        let p_move_status =
          Attack_Status {atk_eff = type_eff;
                     self_status_change = new_status_change;
                     opp_status_change = (false, def_poca.status);
                     missed = false } in

        (g_state'', p_move_status)
        end
      end

  | SSleep t | SFreeze t ->
    let new_status =
      match atk_poca.status with
      | SSleep t -> SSleep (t-1)
      | SFreeze t -> SFreeze (t-1) in
      | _ -> failwith "poca status should only be sleep or freeze"

    let p_move_status =
      Attack_Status {atk_eff = ENormal;
                     self_status_change = (false, new_status);
                     opp_status_change = (false, def_poca.status);
                     missed = false } in

    let atk_poca' = {atk_poca with status=new_status} in
    let atk_state' = {atk_state with active_pocamon=atk_poca'} in
    let g_state' = if p1_is_atk then {g_state with player_one=atk_state'}
      else {g_state with player_two=atk_state'} in
    (g_state', p_move_status)

(*
* Switches the active pocamon of the player making the move
*)
let switch_pocamon switch_poca p_state g_state =
  let p1_switch = p_state = g_state.player_one in

  let active_poca = p_state.active_pocamon in
  let other_poca =
    List.filter (fun p -> p <> switch_poca) p_state.pocamon_list in
  let new_party = active_poca::other_poca in

  let p_state' = {p_state with active_pocamon=switch_poca;
                               pocamon_list=new_party}

(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
let do_single_move player_state foe_state action p_state_is_p1 g_state =
  match action with
  | Move m -> apply_attack player_state foe_state m p_state_is_p1 g_state
  | Switch s_p -> switch_pocamon s_p p_state

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
    let new_g_state = do_single_move g_state.player_one
      g_state.player_two p1_action true g_state in



    let final_g_state = do_single_move new_g_state.player_two
      new_g_state.player_one p2_action false new_g_state in
    final_g_state
  else
    let new_g_state = do_single_move g_state.player_two
      g_state.player_one p2_action false g_state in
    let final_g_state = do_single_move new_g_state.player_one
      new_g_state.player_two p1_action true new_g_state in
    final_g_state