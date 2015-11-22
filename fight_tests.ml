open Types
open Fight

let tackle = {
          name = "TACKLE";
          move_type = TNormal;
          status_effect = MPoison;
          status_probability = 0;
          accuracy = 100;
          damage = 80;
          max_pp = 20;
          pp = 20;
          move_category = EPhysical
      }

let poisoned_poca1 = {
      name = "p1 poca one";
      status = SPoison;
      moves = [tackle;tackle;tackle;tackle];
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
      ascii = "IMAGINE THIS FUCKER IN\n YOUR HEAD"
    }

let poca1 = {
      name = "p1 poca one";
      status = SNormal;
      moves = [tackle;tackle;tackle;tackle];
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
      ascii = "IMAGINE THIS FUCKER IN\n YOUR HEAD"
    }

let poca2 = {
      name = "p1 poca two";
      status = SNormal;
      moves = [tackle;tackle;tackle;tackle];
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
      ascii = "IMAGINE THIS FUCKER IN\n YOUR HEAD"
    }

let poca3 = {
      name = "p2 poca one";
      status = SNormal;
      moves = [tackle;tackle;tackle;tackle];
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
      ascii = "IMAGINE THIS FUCKER IN\n YOUR HEAD"
    }

let poca4 = {
      name = "p2 poca two";
      status = SNormal;
      moves = [tackle;tackle;tackle;tackle];
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
      ascii = "IMAGINE THIS FUCKER IN\n YOUR HEAD"
    }

let simple_game =
{
  player_one =
  {
    name = "player one";
    active_pocamon = poca1;
    pocamon_list = [poca1; poca2];
    is_computer = false
  };
  player_two =
  {
    name = "player two";
    active_pocamon = poca3;
    pocamon_list = [poca3; poca4];
    is_computer = false
  };
  battle_info =
  {
    player_one_active_pocamon = poca1;
    player_two_active_pocamon = poca3;
    player_one_remaining_pocamon = 2;
    player_two_remaining_pocamon = 2;
    player_one_name = "player one";
    player_two_name = "player two";
  };
}


TEST "Test switch" = let new_state, _ =
  switch_pocamon poca2 simple_game.player_one simple_game in
  let new_new_state, _ =
    switch_pocamon poca1 new_state.player_one new_state in
  new_state.player_one.active_pocamon = poca2 &&
  new_new_state.player_one.active_pocamon = poca1 &&
  new_state.battle_info.player_one_active_pocamon = poca2 (*&&
  new_new_state.battle_info.player_one_active_pocamon = poca1 *)

let () = print_endline "FIRST TEST DONE"

TEST "Test empty debuff" = let new_state, _ =
  apply_status_debuffs simple_game in
  new_state = simple_game

TEST "Test single poisoned poca" = let poison_game =
  {simple_game with battle_info = {simple_game.battle_info with player_one_active_pocamon = poisoned_poca1};
                    player_one = {simple_game.player_one with active_pocamon = poisoned_poca1}} in
  let new_state, _ = apply_status_debuffs poison_game in
  new_state.player_one.active_pocamon.health <
    new_state.player_one.active_pocamon.stats.max_hp &&
  new_state.battle_info.player_one_active_pocamon.health <
    new_state.battle_info.player_one_active_pocamon.stats.max_hp

TEST "basic fight mechanics are correct" =
  let damage = calc_damage poca1 poca2 tackle in
  let () = print_endline (string damage) in
  damage <= 86 || damage >= 73