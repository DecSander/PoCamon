open Ai
open PocaDex
open Types
open Fight

let phyNor1 ={name="PHYSNOR"; move_type=TNormal; status_effect=MNormal; 
                     status_probability=100; accuracy=100; damage=50; max_pp=35; 
                      effect=MNone; pp=35; move_category=EPhysical}


let phyWat1 = {name="PHYSWAT"; move_type=TWater; status_effect=MNormal; 
                     status_probability=100; accuracy=100; damage=50; max_pp=35; 
                      effect=MNone; pp=35; move_category=EPhysical}


let phyGra1 = {name="PHYSGRA"; move_type=TGrass; status_effect=MNormal; 
                     status_probability=100; accuracy=100; damage=50; max_pp=35; 
                      effect=MNone; pp=35; move_category=EPhysical}

let poca1 = get_poca_with_moves "VENUSAUR" [phyNor1; phyWat1; phyGra1 ]
let poca2 = get_poca_with_moves "STARMIE"  [phyWat1; phyNor1;]

let player_one: player_state = {name="player one"; active_pocamon = poca2;
          pocamon_list = []; is_computer = Human }

let player_two: player_state ={ name = "player two"; active_pocamon = poca1;
          pocamon_list = []; is_computer = Human; }

let simple_game = {player_one=player_one; player_two=player_two;}



let moves_status = 
Attack_Status {
  atk_eff = ENormal;
  spec_eff = MNone;
  self_status_change = false,  SNormal;
  opp_status_change = false, SNormal;
  missed = false; }

let battle_status = {
     p1_went_first = false;
     p1_move_status = moves_status;
     p2_move_status = moves_status;
}
    

TEST "Super Effective Move " = 
  get_ai_action simple_game battle_status = FMove phyGra1

let reverse_game = {player_one=player_two; player_two=player_one;}
TEST "Super Effective Move" = 
  get_ai_action reverse_game battle_status = FMove phyNor1

let game_with_different_moves = 
    {reverse_game with player_two=
      {player_two with active_pocamon=
        {reverse_game.player_two.active_pocamon with moves =
          [phyNor1; phyWat1;]}}}

TEST "Super Effective Move with other move orders" = 
get_ai_action game_with_different_moves battle_status = FMove phyNor1


