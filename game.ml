open Types
open Io
open Ai
open Fight
open PocaDex

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

let process_screen_action comm s_state g_state : s_state =
  match comm, s_state with
  | Fight, Out -> Moves
  | Pocamon, Out -> Pocamon_List 1
  | Run, Out -> Talking "You can't run from a trainer battle!"
  | Back, Moves -> Out
  | Down, Pocamon_List n -> Pocamon_List (if n < 3 then n + 1 else 3)
  | Up, Pocamon_List n -> Pocamon_List (if n > 0 then n - 1 else 0)
  | Back, Pocamon _ -> Out
  | Back, Talking _ | Enter, Talking _ -> Out
  | _ -> s_state


let rec get_player_action g_state p_state s_state: command =
  let () = print_screen g_state.public_info p_state s_state in
  let input = read_line () in
  match (process_input input), s_state with
  | Action (Move x), Moves ->
    if List.mem x (List.map (fun m -> m.name) p_state.active_pocamon.moves) then
      Move x
    else
      get_player_action g_state p_state s_state
  | Action (Switch x), Pocamon ->
    (if List.mem x (List.map (fun m -> m.name) p_state.pocamon_list) then
      Switch x
    else
      get_player_action g_state p_state s_state)
  | c -> get_player_action g_state (process_screen_action c s_state g_state)

let rec wait_for_enter g_state p_state s_state : unit =
  let () = let () = print_screen g_state.public_info p_state s_state in
  let input = read_line () in
  match (process_input input) with
  | Enter -> ()
  | _ -> wait_for_enter g_state p_state s_state

let print_result action g_state p_state m_status opp_p_state old_p_state
  old_opp_p_state: unit =
  match m_status, action with
      | Switch_Status, _ ->
        let screen_message = Talking (p_state.name ^
          " switched to " ^
          player_one.active_pocamon.name) in
        wait_for_enter g_state p_state screen_message
      | Attack_Status a, Move move_name ->
        let poca_used_move = Talking (p_state.name "'s " ^
          p_state.active_pocamon.name ^ " used " ^ move_name) in

        let () = wait_for_enter g_state p_state poca_used_move in

        let () = if (match a.atk_eff with ENormal -> false | _ -> true) then
          let eff =
            match a.atk_eff with
            | ESuper -> "It's super effective!"
            | ENotVery -> "It's not very effective..." in
          wait_for_enter g_state p_state (Talking eff)
        else
          ()

        let () = if fst a.status_change then
          let change_string =
            match snd a.status_change with
            | SNormal -> " is healthy again!"
            | SPoison -> " | SBurn | SSleep of int | SParalyze | SFreeze of int



let rec run_game_turn g_state : game_state =
  let p1_action = get_player_action g_state.player_one Out in
  let p2_action = get_player_action g_state.player_two Out in
  let new_g_state, printfo = apply_fight_sequence g_state p1_action p2_action in

  let () =
    if printfo.p1_went_first then
      (print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two;
      print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one)
    else
      (print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one;
      print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two)

  run_game_turn status_changed_g_state

let start () : unit =
  run_game_turn (gen_initial_state ())