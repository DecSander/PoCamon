open Types

type attack_status = {
      atk_eff : pEffect;
      spec_eff : mEffect;
      self_status_change : bool * pStatus;
      opp_status_change : bool * pStatus;
      missed : bool;
}

type move_status = Attack_Status of attack_status | Switch_Status | Faint_Status
                  | Charge_Status of move

type battle_status = {
      p1_went_first : bool;
      p1_move_status : move_status;
      p2_move_status : move_status;
}

type debuff_state = {
  p1_debuff : pStatus;
  p2_debuff : pStatus;
}

let calc_type_effectiveness atk_type def_type =
  begin match atk_type with
    | TNormal ->
      begin match def_type with
      | TRock -> 0.5
      | TGhost -> 0.
      | _ -> 1.
      end
    | TFire ->
      begin match def_type with
      | TFire | TWater | TRock | TDragon -> 0.5
      | TGrass | TIce | TBug -> 2.
      | _ -> 1.
      end
    | TWater ->
      begin match def_type with
      | TWater | TGrass | TDragon -> 0.5
      | TFire | TGround | TRock -> 2.
      | _ -> 1.
      end
    | TElectric ->
      begin match def_type with
      | TElectric | TGrass | TDragon -> 0.5
      | TWater | TFlying -> 2.
      | TGround -> 0.
      | _ -> 1.
      end
    | TGrass ->
      begin match def_type with
      | TFire | TGrass | TPoison | TFlying | TBug | TDragon -> 0.5
      | TWater | TGround | TRock -> 2.
      | _ -> 1.
      end
    | TIce ->
      begin match def_type with
      | TFire | TWater| TIce -> 0.5
      | TGrass | TGround | TFlying | TDragon -> 2.
      | _ -> 1.
      end
    | TFighting ->
      begin match def_type with
      | TNormal | TIce | TRock -> 2.
      | TPoison | TFlying | TPsychic | TBug -> 0.5
      | TGhost -> 0.
      | _ -> 1.
      end
    | TPoison ->
      begin match def_type with
      | TGrass | TBug -> 2.
      | TPoison | TGround | TRock | TGhost -> 0.5
      | _ -> 1.
      end
    | TGround ->
      begin match def_type with
      | TFire | TElectric | TPoison | TRock -> 2.
      | TGrass | TBug -> 0.5
      | TFlying -> 0.
      | _ -> 1.
      end
    | TFlying ->
      begin match def_type with
      | TGrass | TFighting | TBug -> 2.
      | TElectric | TRock -> 0.5
      | _ -> 1.
      end
    | TPsychic ->
      begin match def_type with
      | TFighting | TPoison -> 2.
      | TPsychic -> 0.5
      | _ -> 1.
      end
    | TBug ->
      begin match def_type with
      | TFire | TFighting | TFlying -> 0.5
      | TGrass | TPoison | TPsychic -> 2.
      | _ -> 1.
      end
    | TRock ->
      begin match def_type with
      | TFire | TIce | TFlying | TBug -> 2.
      | TFighting | TGround -> 0.5
      | _ -> 1.
      end
    | TGhost ->
      begin match def_type with
      | TNormal | TPsychic -> 0.
      | TGhost -> 2.
      | _ -> 1.
      end
    | TDragon ->
      begin match def_type with
      | TDragon -> 2.
      | _ -> 1.
      end
    end

let get_stat_mod_multiplier i : float =
  match i with
  | -6 -> 25./.100.
  | -5 -> 28./.100.
  | -4 -> 33./.100.
  | -3 -> 40./.100.
  | -2 -> 50./.100.
  | -1 -> 66./.100.
  |  0 -> 100./.100.
  |  1 -> 150./.100.
  |  2 -> 200./.100.
  |  3 -> 250./.100.
  |  4 -> 300./.100.
  |  5 -> 350./.100.
  |  6 -> 400./.100.
  | _ -> failwith "Error - stat mods must be between -6 and 6"

let change_stat_mods atk_mods def_mods move : poca_stat_mods * poca_stat_mods =
  let force_bounds n =
    if n < -6 then -6 else if n > 6 then 6 else n in
  match move.effect with
  | MAttack x ->
    if x > 0 then
      {atk_mods with attack=force_bounds(atk_mods.attack + x)}, def_mods
    else
      atk_mods, {def_mods with attack=force_bounds(def_mods.attack + x)}
  | MDefense x ->
    if x > 0 then
      {atk_mods with defense=force_bounds(atk_mods.defense + x)}, def_mods
    else
      atk_mods, {def_mods with defense=force_bounds(def_mods.defense + x)}
  | MSpecAttack x ->
    if x > 0 then
      {atk_mods with sp_attack=force_bounds(atk_mods.sp_attack + x)}, def_mods
    else
      atk_mods, {def_mods with sp_attack=force_bounds(def_mods.sp_attack + x)}
  | MSpecDefense x ->
    if x > 0 then
      {atk_mods with sp_defense=force_bounds(atk_mods.sp_defense + x)}, def_mods
    else
      atk_mods, {def_mods with sp_defense=force_bounds(def_mods.sp_defense + x)}
  | MSpeed x ->
    if x > 0 then
      {atk_mods with speed=force_bounds(atk_mods.speed + x)}, def_mods
    else
      atk_mods, {def_mods with speed=force_bounds(def_mods.speed + x)}
  | _ -> atk_mods, def_mods

let calc_damage (atk_poca : pocamon) (effective_atk_stats : poca_stats)
  (def_poca : pocamon) (effective_def_stats : poca_stats) move =

  let type_effectiveness =
      if (fst def_poca.poca_type) = (snd def_poca.poca_type) then
        calc_type_effectiveness move.move_type (fst def_poca.poca_type)
      else calc_type_effectiveness move.move_type (fst def_poca.poca_type) *.
        calc_type_effectiveness move.move_type (snd def_poca.poca_type) in

  let stab_bonus =
    if ((fst atk_poca.poca_type) = move.move_type
    || (snd atk_poca.poca_type) = move.move_type) then 1.5 else 1. in

  let burn_multiplier =
    match atk_poca.status with
    | SBurn -> 0.5
    | _ -> 1. in

  (* it is assumed that every pocamon is level 100 *)
  let assumed_level = 100. in

  let atk_def_multiplier =
    match move.move_category with
    | EPhysical -> float_of_int(effective_atk_stats.attack)
      /. float_of_int(effective_def_stats.defense)
    | ESpecial -> float_of_int(effective_atk_stats.sp_attack)
      /. float_of_int(effective_def_stats.sp_defense) in

  let base_pwr = float_of_int(move.damage) in

  let rand_mod = 0.85 +. (float_of_int((Random.int 15)) /. 100.) in

  let modifiers = burn_multiplier *. stab_bonus *.
                  type_effectiveness *. rand_mod in

  let damage = if base_pwr > 0. then
    (((2. *. assumed_level +. 10.) /. 250.) *. (atk_def_multiplier)
    *. base_pwr +. 2. ) *. modifiers
    else 0. in
  damage, type_effectiveness

let mStatus_to_pStatus move_status =
  match move_status with
  | MNormal -> SNormal
  | MPoison -> SPoison
  | MBurn -> SBurn
  | MSleep -> SSleep ((Random.int 2) + 3)
  | MParalyze -> SParalyze
  | MFreeze -> SFreeze ((Random.int 2) + 3)
  | _ -> failwith "TODO"

(*
* Applys the single attack to the game state
*)
let apply_attack atk_state def_state move p1_is_atk g_state =

  let charge_move = atk_state.active_pocamon.charging in
  let charge_off = {atk_state.active_pocamon with charging = None} in
  let atk_state = {atk_state with active_pocamon = charge_off} in
  let g_state = if p1_is_atk then
    {g_state with player_one = atk_state}
  else
    {g_state with player_two = atk_state} in

  let atk_poca = atk_state.active_pocamon in
  let def_poca = def_state.active_pocamon in

  let effective_atk_stats =
  {
    max_hp = atk_poca.stats.max_hp;
    attack = int_of_float(float_of_int(atk_poca.stats.attack) *.
      get_stat_mod_multiplier(atk_poca.stat_mods.attack));
    defense = int_of_float(float_of_int(atk_poca.stats.defense) *.
      get_stat_mod_multiplier(atk_poca.stat_mods.defense));
    sp_defense = int_of_float(float_of_int(atk_poca.stats.sp_defense) *.
      get_stat_mod_multiplier(atk_poca.stat_mods.sp_defense));
    sp_attack = int_of_float(float_of_int(atk_poca.stats.sp_attack) *.
      get_stat_mod_multiplier(atk_poca.stat_mods.sp_attack));
    speed = int_of_float(float_of_int(atk_poca.stats.speed) *.
      get_stat_mod_multiplier(atk_poca.stat_mods.speed))
  } in
  let effective_def_stats =
  {
    max_hp = def_poca.stats.max_hp;
    attack = int_of_float(float_of_int(def_poca.stats.attack) *.
      get_stat_mod_multiplier(def_poca.stat_mods.attack));
    defense = int_of_float(float_of_int(def_poca.stats.defense) *.
      get_stat_mod_multiplier(def_poca.stat_mods.defense));
    sp_defense = int_of_float(float_of_int(def_poca.stats.sp_defense) *.
      get_stat_mod_multiplier(def_poca.stat_mods.sp_defense));
    sp_attack = int_of_float(float_of_int(def_poca.stats.sp_attack) *.
      get_stat_mod_multiplier(def_poca.stat_mods.sp_attack));
    speed = int_of_float(float_of_int(def_poca.stats.speed) *.
      get_stat_mod_multiplier(def_poca.stat_mods.speed));
  } in

  match atk_poca.status with
  | SNormal | SPoison | SBurn  | SParalyze | SSleep 0 | SFreeze 0 ->
    let is_paralyzed =
      match atk_poca.status with
      | SParalyze ->
        let x = (Random.int 100) in
        x <= 25
      | _ -> false in



    let new_status_change =
      match atk_poca.status with
      | SSleep 0 | SFreeze 0 -> (true, SNormal)
      | SParalyze -> (false, SNormal)
      | _ -> (false, atk_poca.status) in

     let g_state' =
      match atk_poca.status with
      | SSleep 0 | SFreeze 0 ->
        let atk_poca' = {atk_poca with status=SNormal} in
        let atk_state' = {atk_state with active_pocamon=atk_poca'} in
        if p1_is_atk then {g_state with player_one=atk_state'}
        else {g_state with player_two=atk_state'}
      | _ -> g_state in

    let atk_state, def_state = if p1_is_atk then
      g_state'.player_one, g_state'.player_two
    else
      g_state'.player_two, g_state'.player_one
    in


    if is_paralyzed then
      begin
      let p_move_status =
      Attack_Status {atk_eff = ENormal;
                     spec_eff = MNone;
                     self_status_change = (false, SParalyze);
                     opp_status_change = (false, def_poca.status);
                     missed = false } in
      (g_state', p_move_status)
      end
    else
      begin
      if (match move.effect with MCharge | MChargeNoHit -> false | _ -> true)
        || (match charge_move with Some _ -> true | None -> false) then

        let missed = (Random.int 100) > move.accuracy
          || def_poca.attack_immunity in

        if missed then
          begin
          let new_attacker =
            {atk_state.active_pocamon with attack_immunity=false} in
          let new_atk_state = {atk_state with active_pocamon=new_attacker} in
          let g_state'' = if p1_is_atk then
            {player_one=new_atk_state; player_two=def_state}
          else
            {player_one=def_state; player_two=new_atk_state} in
          let p_move_status =
            Attack_Status {atk_eff = ENormal;
                       spec_eff = MNone;
                       self_status_change = new_status_change;
                       opp_status_change = (false, def_poca.status);
                       missed = true } in
          (g_state'', p_move_status)
          end
        else
          begin

          let damage, damage_mult = calc_damage atk_poca effective_atk_stats
            def_poca effective_def_stats move in

          let type_eff =
            if move.damage >= 1 && abs_float(damage_mult -. 2.) < 0.01 then
              ESuper
            else if move.damage >= 1 && abs_float(damage_mult -. 0.5) < 0.01 then
              ENotVery
            else if move.damage >= 1 && abs_float(damage_mult) < 0.01 then
              EImmune
            else
              ENormal in

          let def_poca_health = def_poca.health - int_of_float(damage) in

          let def_poca_health' =
            if def_poca_health < 0 then 0 else def_poca_health in

          let leech_health = (def_poca.health - def_poca_health') / 2 in

          let status_eff =
            (Random.int 100) <= move.status_probability in


          let new_status, def_status_change = if status_eff
            then begin match move.status_effect, def_poca.status with
            | MNormal, _ -> def_poca.status, false
            | MFreeze, SFreeze _ -> def_poca.status, false
            | MSleep, SSleep _ -> def_poca.status, false
            | _, SNormal ->
              if (mStatus_to_pStatus move.status_effect) <> def_poca.status then
                (mStatus_to_pStatus move.status_effect), true
              else
                def_poca.status, false
            | _ -> def_poca.status, false
            end
            else def_poca.status, false in

          let def_poca' =
            if match move.effect with Mohko -> true | _ -> false then
              {def_poca with health=0; status=new_status}
            else
              {def_poca with health=def_poca_health'; status=new_status}
          in

          let atk_poca' =
            match move.effect with
            | MRecoil -> {atk_state.active_pocamon with
                health=atk_state.active_pocamon.health -
                int_of_float(damage/.3.)}
            | MExplode -> {atk_state.active_pocamon with health = 0}
            | MRecover -> {atk_state.active_pocamon with health = min
                (atk_state.active_pocamon.health +
                  atk_state.active_pocamon.stats.max_hp/2)
                atk_state.active_pocamon.stats.max_hp}
            | MLeech -> {atk_state.active_pocamon with health = min
                (atk_state.active_pocamon.health + leech_health)
                atk_state.active_pocamon.stats.max_hp}
            | _ -> atk_state.active_pocamon
          in

          let atk_poca_stat_mods, def_poca_stat_mods =
            change_stat_mods atk_poca'.stat_mods def_poca'.stat_mods move in

          let def_poca'' =
            {def_poca' with stat_mods=def_poca_stat_mods} in
          let atk_poca'' =
            {atk_poca' with stat_mods=atk_poca_stat_mods;
                            attack_immunity=false} in

          let def_state' = {def_state with active_pocamon=def_poca''} in
          let atk_state' = {atk_state with active_pocamon=atk_poca''} in

          let g_state'' = if not p1_is_atk
            then {player_one=def_state'; player_two=atk_state'}
            else {player_two=def_state'; player_one=atk_state'} in

          let p_move_status =
            Attack_Status {atk_eff = type_eff;
                       spec_eff = move.effect;
                       self_status_change = new_status_change;
                       opp_status_change = (def_status_change, def_poca'.status);
                       missed = false } in

          (g_state'', p_move_status)
          end
      else
        let immune = match move.effect with MChargeNoHit -> true | _ -> false in
        let new_pocamon = {atk_state.active_pocamon with
                            charging = Some move;
                            attack_immunity = immune} in
        let new_player = {atk_state with active_pocamon = new_pocamon} in
        let new_game_status = if p1_is_atk then
          {g_state with player_one = new_player}
        else
          {g_state with player_two = new_player} in

        (new_game_status, Charge_Status move)
    end

  | SSleep t | SFreeze t ->
    let new_status =
      match atk_poca.status with
      | SSleep t -> SSleep (t-1)
      | SFreeze t -> SFreeze (t-1)
      | _ -> failwith "poca status should only be sleep or freeze" in

    let p_move_status =
      Attack_Status {atk_eff = ENormal;
                     spec_eff = MNone;
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
let switch_pocamon switch_poca p_state g_state is_fainted=
  let p1_switch = p_state = g_state.player_one in

  let active_poca = p_state.active_pocamon in
  let other_poca =
    List.filter (fun p -> p <> switch_poca) p_state.pocamon_list in
  let new_party = if is_fainted then other_poca else active_poca::other_poca in

  let p_state' = {p_state with active_pocamon=switch_poca;
                               pocamon_list=new_party} in

  let g_state' = if p1_switch then {g_state with player_one=p_state'}
      else {g_state with player_two=p_state'} in

  (g_state', Switch_Status)

(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
let do_single_move player_state foe_state action p_state_is_p1 g_state =
  let action =
    match player_state.active_pocamon.charging with
    | Some m -> FCharge m
    | _ -> action in

  match action with
  | FMove m | FCharge m -> apply_attack player_state foe_state m p_state_is_p1 g_state
  | FSwitch s_p ->
    switch_pocamon s_p player_state g_state false

let apply_fight_sequence g_state p1_action p2_action =

  let p1 = g_state.player_one in
  let p1_poca = p1.active_pocamon in
  let p1_status_speed_multiplier =
    match p1_poca.status with
    | SParalyze -> 0.25
    | _ -> 1. in
  let p1_switch_priority, p1_priority_hit =
    match p1_action with
    | FMove x | FCharge x -> false, (
      begin match x.effect with
      | MPriorityHit -> true
      | _ -> false end)
    | FSwitch _ -> true, false in

  let p1_poca = g_state.player_one.active_pocamon in
  let p2_poca = g_state.player_two.active_pocamon in

  let effective_p1_stats =
  {
    max_hp = p1_poca.stats.max_hp;
    attack = int_of_float(float_of_int(p1_poca.stats.attack) *.
      get_stat_mod_multiplier(p1_poca.stat_mods.attack));
    defense = int_of_float(float_of_int(p1_poca.stats.defense) *.
      get_stat_mod_multiplier(p1_poca.stat_mods.defense));
    sp_defense = int_of_float(float_of_int(p1_poca.stats.sp_defense) *.
      get_stat_mod_multiplier(p1_poca.stat_mods.sp_defense));
    sp_attack = int_of_float(float_of_int(p1_poca.stats.sp_attack) *.
      get_stat_mod_multiplier(p1_poca.stat_mods.sp_attack));
    speed = int_of_float(float_of_int(p1_poca.stats.speed) *.
      get_stat_mod_multiplier(p1_poca.stat_mods.speed));
  } in
  let effective_p2_stats =
  {
    max_hp = p2_poca.stats.max_hp;
    attack = int_of_float(float_of_int(p2_poca.stats.attack) *.
      get_stat_mod_multiplier(p2_poca.stat_mods.attack));
    defense = int_of_float(float_of_int(p2_poca.stats.defense) *.
      get_stat_mod_multiplier(p2_poca.stat_mods.defense));
    sp_defense = int_of_float(float_of_int(p2_poca.stats.sp_defense) *.
      get_stat_mod_multiplier(p2_poca.stat_mods.sp_defense));
    sp_attack = int_of_float(float_of_int(p2_poca.stats.sp_attack) *.
      get_stat_mod_multiplier(p2_poca.stat_mods.sp_attack));
    speed = int_of_float(float_of_int(p2_poca.stats.speed) *.
      get_stat_mod_multiplier(p2_poca.stat_mods.speed));
  } in

  let p2 = g_state.player_two in
  let p2_poca = p2.active_pocamon in
  let p2_status_speed_multiplier =
    match p2_poca.status with
    | SParalyze -> 0.25
    | _ -> 1. in
  let p2_switch_priority, p2_priority_hit =
    match p2_action with
    | FMove x | FCharge x -> false, (
      begin match x.effect with
      | MPriorityHit -> true
      | _ -> false end)
    | FSwitch _ -> true, false in

  let p1_goes_first =
    if p1_switch_priority then
      true
    else if p2_switch_priority then
      false
    else if p1_priority_hit = p2_priority_hit then
      ((float_of_int effective_p1_stats.speed)*.p1_status_speed_multiplier >=
        (float_of_int effective_p2_stats.speed) *.p2_status_speed_multiplier)
    else
      p1_priority_hit
  in

  if p1_goes_first
  then
    let new_g_state, p1_status = do_single_move g_state.player_one
      g_state.player_two p1_action true g_state in

    if new_g_state.player_two.active_pocamon.health <= 0
    then
      (new_g_state, {p1_went_first=true;
                    p1_move_status=p1_status;
                    p2_move_status=Faint_Status; })
    else
      let final_g_state, p2_status = do_single_move new_g_state.player_two
        new_g_state.player_one p2_action false new_g_state in
      (final_g_state, {p1_went_first=true;
                      p1_move_status=p1_status;
                      p2_move_status=p2_status})
  else
    let new_g_state, p2_status = do_single_move g_state.player_two
      g_state.player_one p2_action false g_state in

    if new_g_state.player_one.active_pocamon.health <= 0
    then
      (new_g_state, {p1_went_first=false;
                    p1_move_status=Faint_Status;
                    p2_move_status=p2_status})
    else
      let final_g_state, p1_status = do_single_move new_g_state.player_one
        new_g_state.player_two p1_action true new_g_state in
      (final_g_state, {p1_went_first=false;
                      p1_move_status=p1_status;
                      p2_move_status=p2_status})

let apply_status_debuffs g_state =
  let p1_poca = g_state.player_one.active_pocamon in
  let p2_poca = g_state.player_two.active_pocamon in

  let p1_poca_health, p1_debuff_s =
  match p1_poca.status with
  | SBurn -> p1_poca.health - (p1_poca.stats.max_hp / 8), SBurn
  | SPoison -> p1_poca.health - (p1_poca.stats.max_hp / 8), SPoison
  | _ -> p1_poca.health, SNormal in

  let p2_poca_health, p2_debuff_s =
  match p2_poca.status with
  | SBurn -> p2_poca.health - (p2_poca.stats.max_hp / 8), SBurn
  | SPoison -> p2_poca.health - (p2_poca.stats.max_hp / 8), SPoison
  | _ -> p2_poca.health, SNormal in

  let p1_final_health = if p1_poca_health > 0 then p1_poca_health else 0 in
  let p2_final_health = if p2_poca_health > 0 then p2_poca_health else 0 in

  let p1_poca' = {p1_poca with health=p1_final_health} in
  let p2_poca' = {p2_poca with health=p2_final_health} in
  let p1' = {g_state.player_one with active_pocamon=p1_poca'} in
  let p2' = {g_state.player_two with active_pocamon=p2_poca'} in

  let g_state' = {player_one= p1'; player_two=p2'} in

  (g_state', {p1_debuff=p1_debuff_s; p2_debuff=p2_debuff_s})


