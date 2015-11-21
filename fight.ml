open Types

let calc_type_effectiveness atk_type def_type =
  match atk_type with
    | TNormal ->
      match def_type with
      | TRock ->  0.5
      | TSteel -> 0.5
      | TGhost -> 0
      | _ -> 1.
    | TFire ->
      match foe_poca.poca_type with
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
      match foe_poca.poca_type with
      | TWater -> 0.5
      | TWater
    | TElectric ->
      match foe_poca.poca_type with
      |
    | TGrass ->
      match foe_poca.poca_type with
      |
    | TIce ->
      match foe_poca.poca_type with
      |
    | TFighting ->
      match foe_poca.poca_type with
      |
    | TPoison ->
      match foe_poca.poca_type with
      |
    | TGround ->
      match foe_poca.poca_type with
      |
    | TFlying ->
      match foe_poca.poca_type with
      |
    | TPsychic ->
      match foe_poca.poca_type with
      |
    | TBug ->
      match foe_poca.poca_type with
      |
    | TRock ->
      match foe_poca.poca_type with
      |
    | TGhost ->
      match foe_poca.poca_type with
      |
    | TDragon ->
      match foe_poca.poca_type with
      |


(*
* Applys the single attack to the game state
*)
let apply_attack p_state foe_state move g_state =
  let active_poca = p_state.active_pocamon in
  let foe_poca = foe_state.active_pocamon in

  let type_effectiveness =
    calc_type_effectiveness move.move_type foe_poca.poca_type


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
  | Switch (_, s_p) -> switch_pokemon s_p p_state

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