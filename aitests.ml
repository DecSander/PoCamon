open Ai
open PocaDex
open Types
open Fight

let poca1 = get_poca_with_moves "VENUSAUR" ["RAZOR LEAF"; "CUT";"TACKLE"; "POUND"]
let poca2 = get_poca_with_moves "STARMIE"  ["SURF"; "CUT";"TACKLE"; "BUBBLEBEAM"]

let player_one: player_state = {name="player one"; active_pocamon = poca1;
    			pocamon_list = []; is_computer = Human }

let player_two: player_state ={ name = "player two"; active_pocamon = poca2;
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
		
TEST = get_ai_action P2 simple_game battle_status = FMove (get_move "RAZOR LEAF")