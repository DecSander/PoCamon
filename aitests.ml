open Ai
open PocaDex
open Types
open Fight

let phyNor1 ={name="PHYSNOR"; move_type=TNormal; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyNor2 ={name="PHYSNORSTR"; move_type=TNormal; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=200; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyWat1 = {name="PHYSWAT"; move_type=TWater; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}


let phyGra1 = {name="PHYSGRA"; move_type=TGrass; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let spGra1 = {name="SPECGRA"; move_type=TGrass; status_effect=MNormal;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=ESpecial}

let statusSlp1 = {name="STATUSSLP"; move_type=TNormal; status_effect=MSleep;
                     status_probability=100; accuracy=100; damage=0; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyBrn1 = {name="PHYBRN"; move_type=TNormal; status_effect=MBurn;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let phyPar1 = {name="PHYPAR"; move_type=TNormal; status_effect=MParalyze;
                     status_probability=100; accuracy=100; damage=50; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}

let statusPar1 = {name="STATUSPAR"; move_type=TNormal; status_effect=MParalyze;
                     status_probability=100; accuracy=100; damage=0; max_pp=35;
                      effect=MNone; pp=35; move_category=EPhysical}


let poca1 = get_poca_with_moves "VENUSAUR" [phyNor1; phyWat1; phyGra1 ]
let poca2 = get_poca_with_moves "STARMIE"  [phyWat1; phyNor1;]
let poca_slow = get_poca_with_moves "SNORLAX" [phyNor2;]
let poca_weak = get_poca_with_moves "GLOOM" [statusSlp1;phyGra1]

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


TEST "STAB (same type attack bonus)" =
  get_ai_action simple_game battle_status = FMove phyGra1

let reverse_game = {player_one=player_two; player_two=player_one;}
TEST "STAB reverse"  =
  get_ai_action reverse_game battle_status = FMove phyNor1

let game_with_different_moves =
    {reverse_game with player_two=
      {player_two with active_pocamon=
        {reverse_game.player_two.active_pocamon with moves=
          [phyNor1; phyWat1;]}}}

TEST "STAB with other move orders" =
get_ai_action game_with_different_moves battle_status = FMove phyNor1

let sleep_game = {player_one=
                    {player_one with active_pocamon=poca_slow;
                      pocamon_list=[]};
                  player_two={player_two with active_pocamon=poca_weak;
                      pocamon_list=[]}}

TEST "Should choose sleep" =
get_ai_action sleep_game battle_status = FMove statusSlp1

let burn_game = {sleep_game with player_two={player_two with
                  active_pocamon =
                    {poca_weak with moves=[phyBrn1; phyNor1]}}}

TEST "Should choose burn" =
get_ai_action burn_game battle_status = FMove phyBrn1

let par_game = {sleep_game with player_two={player_two with
                  active_pocamon =
                    {poca_weak with moves=[phyPar1; phyNor1]}}}

TEST "Should choose paralyze" =
get_ai_action par_game battle_status = FMove phyPar1

