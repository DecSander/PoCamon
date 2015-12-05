open Ai
open PocaDex
open Types
open Fight

let phyNor1 ={name="PHYSNOR"; move_type=TNormal; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=20; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}


let phyWat1 = {name="PHYSWAT"; move_type=TWater; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=20; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}


let phyGra1 = {name="PHYSGRA"; move_type=TGrass; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=20; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyElec1 = {name="PHYSELEC"; move_type=TElectric; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=20; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyPriorHit = {name="PHYSQUICK"; move_type=TNormal; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=20; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let badMove = {name="badMove"; move_type=TGrass; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=0; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let pocaBad = get_poca_with_moves "ODDISH"  [badMove;]
let poca1 = get_poca_with_moves "VENUSAUR" [phyNor1; phyWat1; phyGra1 ]
let poca2 = get_poca_with_moves "STARMIE"  [phyWat1; phyNor1;]
let poca3 = get_poca_with_moves "BULBASAUR"  [phyGra1; phyElec1;phyNor1;phyNor1]
let fast = get_poca_with_moves "JOLTEON"  [phyElec1; phyNor1]
let fast_almost_dead = {fast with health = 1}
let prior_hitter =
  {get_poca_with_moves "SNORLAX" [phyPriorHit; phyNor1] with health = 1}

let player_one: player_state = {name="player one"; active_pocamon = poca2;
          pocamon_list = []; is_computer = Human }

let player_two: player_state ={ name = "player two"; active_pocamon = poca1;
          pocamon_list = []; is_computer = Human; }

let simple_game = {player_one=player_one; player_two=player_two;}
let reverse_game = {player_one=player_two; player_two=player_one;}

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

TEST "Super Effective Move" =
  get_ai_action reverse_game battle_status = FMove phyNor1

let game_with_different_moves =
    {reverse_game with player_two=
      {player_two with active_pocamon=
        {reverse_game.player_two.active_pocamon with moves =
          [phyNor1; phyWat1;]}}}


(* Both moves are super effective and deal the same damage, so should choose
the one that deals extra damage due to STAB (Same type attack bonus)*)
TEST "Test uses STAB move over non-STAB" =
  let stab_game = {player_one={player_one with active_pocamon=poca2};
                   player_two={player_two with active_pocamon=poca3}} in
  get_ai_action stab_game battle_status = FMove phyGra1


TEST "Test uses quick attack if need speed to win" =
  let quick_game =
    {player_one={player_one with active_pocamon=fast_almost_dead};
     player_two={player_two with active_pocamon=prior_hitter}} in
  get_ai_action quick_game battle_status = FMove phyPriorHit

TEST "Super Effective Move with other move orders" =
get_ai_action game_with_different_moves battle_status = FMove phyNor1


let player_two' = {player_two with pocamon_list=[poca1]; active_pocamon=pocaBad}
let simple_game' = {simple_game with player_two=player_two'}
TEST "No good moves, should Switch" =
get_ai_action simple_game' battle_status = FSwitch poca1