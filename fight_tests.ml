open Types
open Fight

let tackle = {
          name = "TACKLE";
          move_type = TNormal;
          status_effect = MNormal;
          status_probability = 100;
          accuracy = 100;
          damage = 40;
          max_pp = 20;
          pp = 20;
          move_category = EPhysical;
          effect = MNone
      }

let dummy_move = {tackle with damage=0}
let attack_up = {dummy_move with effect=MAttack 1}
let speed_down = {dummy_move with effect=MSpeed (-1)}
let priority_hit = {dummy_move with effect=MPriorityHit}
let drain = {tackle with effect=MLeech}
let explode = {tackle with effect=MExplode}
let recover = {dummy_move with effect=MRecover}
let charge_hit = {tackle with effect=MCharge}
let charge_no_hit = {tackle with effect=MChargeNoHit}

let poca1 = {
      name = "p1 poca one";
      status = SNormal;
      moves = [tackle;tackle;tackle;dummy_move];
      poca_type = TFire, TGrass;
      health = 200;
      stats =
      {
        max_hp = 200;
        attack = 100;
        defense = 100;
        sp_defense = 100;
        sp_attack = 100;
        speed = 100
      };
      stat_mods =
      {
        attack = 0;
        defense = 0;
        sp_defense = 0;
        sp_attack = 0;
        speed = 0
      };
      charging = None;
      attack_immunity = false;
      ascii = "IMAGINE THIS GUY IN\n YOUR HEAD"
    }

let poca2 = {poca1 with name="p1 poca two"}
let poca3 = {poca1 with name="p2 poca one"}
let poca4 = {poca1 with name="p2 poca two"}

let asleep_poca1 = {poca1 with status=SSleep 4}
let poisoned_poca1 = {poca1 with status=SPoison}
let stat_changer_poca = {poca1 with moves=[attack_up;speed_down]}
let priority_poca = {poca1 with moves=[priority_hit];
  stats={poca1.stats with speed=0}}
let health_changer = {poca1 with moves=[explode;recover;drain]; health=100}
let charger = {poca1 with moves=[charge_hit; charge_no_hit; dummy_move];
                          stats={poca1.stats with speed=1000}}

let simple_game =
{
  player_one =
  {
    name = "player one";
    active_pocamon = poca1;
    pocamon_list = [poca2];
    is_computer = Human
  };
  player_two =
  {
    name = "player two";
    active_pocamon = poca3;
    pocamon_list = [poca4];
    is_computer = Human
  };
}


TEST "Test switch" = let new_state, _ =
  switch_pocamon poca2 simple_game.player_one simple_game false in
  let new_new_state, _ =
    switch_pocamon poca1 new_state.player_one new_state false in
  new_state.player_one.active_pocamon = poca2 &&
  new_new_state.player_one.active_pocamon = poca1

TEST "Test empty debuff" = let new_state, _ =
  apply_status_debuffs simple_game in
  new_state = simple_game

TEST "Test single poisoned poca" = let poison_game =
  {simple_game with player_one = {simple_game.player_one with active_pocamon = poisoned_poca1}} in
  let new_state, _ = apply_status_debuffs poison_game in
  new_state.player_one.active_pocamon.health <
  new_state.player_one.active_pocamon.stats.max_hp

TEST "Test multi turn sleep" = let sleep_game =
  {simple_game with player_one = {simple_game.player_one with active_pocamon = asleep_poca1}} in
  let start_health = simple_game.player_two.active_pocamon.health in
  let new_state, _ = apply_fight_sequence sleep_game (FMove tackle) (FMove tackle) in
  let new_state', _ = apply_fight_sequence new_state (FMove tackle) (FMove tackle) in
  let new_state'', _ = apply_fight_sequence new_state' (FMove tackle) (FMove tackle) in
  let new_state''', _ = apply_fight_sequence new_state'' (FMove tackle) (FMove tackle) in
  let new_state'''', _ = apply_fight_sequence new_state''' (FMove tackle) (FMove tackle) in
  (match new_state.player_one.active_pocamon.status with
  | SSleep x -> x = 3 && (new_state.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state'.player_one.active_pocamon.status with
  | SSleep x -> x = 2 && (new_state'.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state''.player_one.active_pocamon.status with
  | SSleep x -> x = 1 && (new_state''.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state'''.player_one.active_pocamon.status with
  | SSleep x -> x = 0 && (new_state'''.player_two.active_pocamon.health = start_health)
  | _ -> true)
  &&
  (match new_state''''.player_one.active_pocamon.status with
  | SSleep x -> false
  | _ -> true)

TEST "Test multi turn sleep with debuffs" = let sleep_game =
  {simple_game with player_one = {simple_game.player_one with active_pocamon = asleep_poca1}} in
  let start_health = simple_game.player_two.active_pocamon.health in

  let new_state, _ = apply_fight_sequence sleep_game (FMove tackle) (FMove tackle) in
  let debuff_state, debuffs = apply_status_debuffs new_state in

  let new_state', _ = apply_fight_sequence debuff_state (FMove tackle) (FMove tackle) in
  let debuff_state', debuffs' = apply_status_debuffs new_state' in

  let new_state'', _ = apply_fight_sequence debuff_state' (FMove tackle) (FMove tackle) in
  let debuff_state'', debuffs'' = apply_status_debuffs new_state'' in


  let new_state''', _ = apply_fight_sequence debuff_state'' (FMove tackle) (FMove tackle) in
  let debuff_state''', debuffs''' = apply_status_debuffs new_state''' in


  let new_state'''', _ = apply_fight_sequence debuff_state''' (FMove tackle) (FMove tackle) in
  let _, _ = apply_status_debuffs new_state'''' in

  (match new_state.player_one.active_pocamon.status with
  | SSleep x -> x = 3 && (new_state.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state'.player_one.active_pocamon.status with
  | SSleep x -> x = 2 && (new_state'.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state''.player_one.active_pocamon.status with
  | SSleep x -> x = 1 && (new_state''.player_two.active_pocamon.health = start_health)
  | _ -> false)
  &&
  (match new_state'''.player_one.active_pocamon.status with
  | SSleep x -> x = 0 && (new_state'''.player_two.active_pocamon.health = start_health)
  | _ -> true)
  &&
  (match new_state''''.player_one.active_pocamon.status with
  | SSleep x -> false
  | _ -> true)

let rec get_attack_status x =
    match x with
    | Attack_Status a -> a
    | _ -> failwith "Error - wrong type"

TEST "Test attacks" =
  let new_state, info = apply_fight_sequence simple_game (FMove tackle) (FMove tackle) in
  let new_state', info' = apply_fight_sequence new_state (FMove tackle) (FMove tackle) in
  (if (get_attack_status info.p1_move_status).missed then
    new_state.player_two.active_pocamon.health =
    simple_game.player_two.active_pocamon.health
  else
    new_state.player_two.active_pocamon.health <
    simple_game.player_two.active_pocamon.health)
  &&
  (if (get_attack_status info.p2_move_status).missed then
    new_state.player_one.active_pocamon.health =
    simple_game.player_one.active_pocamon.health
  else
    new_state.player_one.active_pocamon.health <
    simple_game.player_one.active_pocamon.health)
  &&
  (if (get_attack_status info'.p1_move_status).missed then
    new_state'.player_two.active_pocamon.health =
    new_state.player_two.active_pocamon.health
  else
    new_state'.player_two.active_pocamon.health <
    new_state.player_two.active_pocamon.health)
  &&
  (if (get_attack_status info'.p2_move_status).missed then
    new_state'.player_one.active_pocamon.health =
    new_state.player_one.active_pocamon.health
  else
    new_state'.player_one.active_pocamon.health <
    new_state.player_one.active_pocamon.health)

TEST "Test stat change moves" =
  let rec fight_x_times x state func =
    if x = 0 then state else
      fight_x_times (x-1) (fst (func state)) func in
  let stat_change_state =
    {simple_game with player_one=
      {simple_game.player_one with active_pocamon=stat_changer_poca}} in

  let use_attack_up = fun s -> apply_fight_sequence s (FMove attack_up) (FMove dummy_move) in
  let used_attack_up_once = fight_x_times 1 stat_change_state use_attack_up in
  let used_attack_up_a_lot = fight_x_times 10 stat_change_state use_attack_up in

  let use_speed_down = fun s -> apply_fight_sequence s (FMove speed_down) (FMove dummy_move) in
  let used_speed_down_once = fight_x_times 1 stat_change_state use_speed_down in
  let used_speed_down_a_lot = fight_x_times 10 stat_change_state use_speed_down in

  (used_attack_up_once.player_one.active_pocamon.stat_mods.attack = 1) &&
  (used_attack_up_a_lot.player_one.active_pocamon.stat_mods.attack = 6) &&
  (used_speed_down_once.player_two.active_pocamon.stat_mods.speed = -1) &&
  (used_speed_down_a_lot.player_two.active_pocamon.stat_mods.speed = -6)


TEST "test MPriorityHit" =
  let priority_game = {simple_game with player_one=
      {simple_game.player_one with active_pocamon=priority_poca}} in
  let _, info = apply_fight_sequence priority_game (FMove priority_hit) (FMove dummy_move) in
  info.p1_went_first

TEST "Test health-effecting effects" =
  let health_game = {simple_game with player_one={
    simple_game.player_one with active_pocamon=health_changer}} in

  let used_recover, _ = apply_fight_sequence health_game
    (FMove recover) (FMove dummy_move) in
  let used_explode, _ = apply_fight_sequence health_game
    (FMove explode) (FMove dummy_move) in
  let used_drain, _ = apply_fight_sequence health_game
    (FMove drain) (FMove dummy_move) in

  (used_recover.player_one.active_pocamon.health > 100) &&
  (used_explode.player_one.active_pocamon.health = 0) &&
  (used_explode.player_two.active_pocamon.health < 200) &&
  (used_drain.player_one.active_pocamon.health > 100) &&
  (used_drain.player_two.active_pocamon.health < 200)

let charge_game = {simple_game with player_one={
    simple_game.player_one with active_pocamon=health_changer}}

let used_charge, _ = apply_fight_sequence charge_game
    (FMove charge_hit) (FMove dummy_move)
let charge_finished, _ = apply_fight_sequence used_charge
    (FMove dummy_move) (FMove dummy_move)

let used_charge_no_hit, info = apply_fight_sequence charge_game
    (FMove charge_no_hit) (FMove dummy_move)
let charge_no_hit_finished, _ = apply_fight_sequence used_charge_no_hit
    (FMove dummy_move) (FMove dummy_move)

TEST "charging field populated" = (used_charge.player_one.active_pocamon.charging <> None)
TEST "Attack_immunity false" = (not used_charge.player_one.active_pocamon.attack_immunity)
TEST "Health unchanged" = (used_charge.player_two.active_pocamon.health = 200)
TEST "charge off" = (charge_finished.player_one.active_pocamon.charging = None)
TEST "health down" = (charge_finished.player_two.active_pocamon.health < 200)

TEST "charging field populated" = (used_charge_no_hit.player_one.active_pocamon.charging <> None)
TEST "attack immunity true" = (used_charge_no_hit.player_one.active_pocamon.attack_immunity)
TEST "health unchanged" = (used_charge_no_hit.player_two.active_pocamon.health = 200)
TEST "Charge off" = (charge_no_hit_finished.player_one.active_pocamon.charging = None)
TEST "attack_immunity off" = (not charge_no_hit_finished.player_one.active_pocamon.attack_immunity)
TEST "health down" = (charge_no_hit_finished.player_two.active_pocamon.health < 200)
TEST "attack missed" = ((get_attack_status info.p2_move_status).missed)