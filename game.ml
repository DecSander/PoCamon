open Types
open Io
open Ai
open Fight
open PocaDex

let gen_initial_state () : game_state =
  (* Must request players name and whether to play against a computer *)
  (* Make sure player cannot get two of the same pocamon *)
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
  | _ -> let () = wait_for_enter g_state g_state.player_one
    (Talking "You have entered an incorrect command") in s_state

let rec choose_new_pocamon g_state p_state s_state : game_state =
  let () = print_screen p_state g_state.public_info s_state in
  let input = read_line () in
  match (process_input input) with
  | Action (Switch p) ->
    let poca_option = try Some (List.find (fun poca -> poca.name = p)
      p_state.pocamon_list) with _ -> None in
    begin match poca_option with
    | Some poca -> fst (switch_pokemon poca p_state g_state)
    | None -> choose_new_pocamon g_state p_state s_state
  | Up -> choose_new_pocamon g_state p_state
            (Pocamon_List (if n > 0 then n - 1 else 0))
  | Down -> choose_new_pocamon g_state p_state
              (Pocamon_List (if n < 3 then n + 1 else 3))
  | _ -> choose_new_pocamon g_state p_state s_state


let on_faint g_state : game_state =
  if g_state.player_one.active_pocamon.health = 0 then
    let () = wait_for_enter g_state g_state.player_one
      (Talking g_state.player_one.active_pocamon.name ^ " fainted!") in
      choose_new_pocamon g_state g_state.player_one (Pocamon_List 0)
  else if g_state.player_two.active_pocamon.health = 0
    let () = wait_for_enter g_state g_state.player_two
      (Talking g_state.player_two.active_pocamon.name ^ " fainted!") in
      choose_new_pocamon g_state g_state.player_two (Pocamon_List 0)
  else
    g_state

let print_result action g_state p_state m_status opp_p_state : unit =
  match m_status, action with
  | Switch_Status, _ ->
    let screen_message = Talking (p_state.name ^
      " switched to " ^
      player_one.active_pocamon.name) in
    wait_for_enter g_state p_state screen_message
  | Attack_Status a, Move move_name ->

    let () = (if fst a.self_status_change then
      wait_for_enter g_state p_state
        (Talking p_state.active_pocamon ^ " became healthy!")
      else ()) in

    match snd a.self_status_change with
    | SSleep _ -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is asleep!"))
    | SFreeze _ -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is frozen!"))
    | SParalyze -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is paralyzed! It can't move!"))
    | _ ->
      (let poca_used_move = Talking (p_state.name "'s " ^
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

      (if fst a.opp_status_change then
        let change_string = opp_p_state.name ^ "'s' " ^
        opp_p_state.active_pocamon.name ^
          (match snd a.opp_status_change with
          | SNormal -> " is healthy again!" (*This should never happen *)
          | SPoison -> " became poisoned!"
          | SBurn -> " was burned!"
          | SSleep _ -> " fell asleep!"
          | SParalyze -> " became paralyzed!"
          | SFreeze _ -> " became frozen!") in
        wait_for_enter g_state p_state
          (Talking change_string) else ()))

  | Faint_Status -> ()

let print_debuff_info g_state p_state p_debuff : unit =
    match p_debuff with
    | SPoison -> wait_for_enter g_state p_state
        (Talking (p_state.active_pocamon.name " was hurt by poison!"))
    | SBurn -> wait_for_enter g_state p_state
        (Talking (p_state.active_pocamon.name " was hurt by its burn!"))
    | _ -> ()


let rec run_game_turn g_state : game_state =
  let p1_action = get_player_action g_state.player_one Out in
  let p2_action = get_player_action g_state.player_two Out in
  let new_g_state, printfo = apply_fight_sequence g_state p1_action p2_action in

  let () =
    if printfo.p1_went_first then
      (print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two;
      print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one;
      )
    else
      (print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one;
      print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two) in

  let faint_switch_game_state = on_faint new_g_state in

  let status_changed_game_state, debuff_info =
    apply_status_debuffs faint_switch_game_state in

  let () = print_debuff_info g_state g_state.player_one debuff_info.p1_debuff in
  let () = print_debuff_info g_state g_state.player_two debuff_info.p2_debuff in

  run_game_turn status_changed_g_state

let start () : unit =
  run_game_turn (gen_initial_state ())