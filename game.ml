open Types
open Io
open Ai
open Fight
open PocaList

let gen_initial_state () : game_state =
  (* Must request players name and whether to play against a computer *)
  let player_one_name = "PLAYER ONE" in
  let player_two_name = "PLAYER TWO" in
  let player_one_pocamon = List.map get_random_pocamon [();();();();();()] in
  let player_two_pocamon = List.map get_random_pocamon [();();();();();()] in
  let player_one_active_pocamon = List.hd player_one_pocamon in
  let player_two_active_pocamon = List.hd player_two_pocamon in
  let player_one =
  {
    name = player_one_name;
    active_pocamon = player_one_active_pocamon;
    pocamon_list = player_one_pocamon;
    is_computer = false
  } in
  let player_two =
  {
    name = player_two_name;
    active_pocamon = player_two_active_pocamon;
    pocamon_list = player_two_pocamon;
    is_computer = false
  } in
  let public_info =
  {
    player_one_active_pocamon = player_one_active_pocamon;
    player_two_active_pocamon = player_two_active_pocamon;
    player_one_remaining_pocamon = 6;
    player_two_remaining_pocamon = 6
  } in

  {
    player_one = player_one;
    player_two = player_two;
    battle_info = public_info
  }

let rec get_player_action g_state s_state: command =
  let input = read_line () in
  match process_input input with
  | Action a -> a
  | c -> get_player_action g_state (process_screen_action c s_state g_state)

let rec run_game_turn g_state : game_state =
  let () = print_screen g_state Out in
  let p1_action = get_player_action g_state Out in
  let p2_action = get_player_action g_state Out in
  let new_g_state = apply_fight_sequence g_state p1_action p2_action in

  run_game_turn status_changed_g_state

let start () : unit =
  run_game_turn (gen_initial_state ())