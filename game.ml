open Types
open Io
open Ai
open Fight
open PocaDex

let rec get_new_pocamon p_list : pocamon =
  let new_poca = get_random_pocamon () in
  if not (List.mem new_poca p_list) then
    new_poca
  else
    get_new_pocamon p_list

let create_public_info g_state: public_info =
  {
    player_one_name = g_state.player_one.name;
    player_two_name = g_state.player_one.name;
    player_one_active_pocamon = g_state.player_one.active_pocamon;
    player_two_active_pocamon = g_state.player_two.active_pocamon;
    player_one_remaining_pocamon =
      List.length (g_state.player_one.pocamon_list);
    player_two_remaining_pocamon =
      List.length (g_state.player_one.pocamon_list);
  }


let gen_initial_state () : game_state =
  (* Must request players name and whether to play against a computer *)
  let player_one_name = "PLAYER ONE" in
  let player_two_name = "PLAYER TWO" in
  let player_one_pocamon = List.fold_left
    (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()] in
  let player_two_pocamon = List.fold_left
    (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()] in
  let player_one_active_pocamon = List.hd player_one_pocamon in
  let player_two_active_pocamon = List.hd player_two_pocamon in
  let player_one_rec =
  {
    name = player_one_name;
    active_pocamon = player_one_active_pocamon;
    pocamon_list = List.tl player_one_pocamon;
    is_computer = false
  } in
  let player_two_rec =
  {
    name = player_two_name;
    active_pocamon = player_two_active_pocamon;
    pocamon_list = List.tl player_two_pocamon;
    is_computer = false
  } in

  {
    player_one = player_one_rec;
    player_two = player_two_rec;
  }

let rec wait_for_enter g_state p_state s_state : unit =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in let () = print_string ">" in
  let input = read_line () in
  match (process_input input) with
  | Some Enter -> ()
  | _ -> wait_for_enter g_state p_state s_state

let process_screen_action comm s_state g_state : screen_state =
  match comm, s_state with
  | Some Fight, Out -> Moves
  | Some Pocamon, Out -> Pocamon_List 1
  | Some Run, Out -> Talking "You can't run from a trainer battle!"
  | Some Back, Moves -> Out
  | Some Down, Pocamon_List n -> Pocamon_List (if n < 2 then n + 1 else 2)
  | Some Up, Pocamon_List n -> Pocamon_List (if n > 0 then n - 1 else 0)
  | Some Back, Pocamon_List _ -> Out
  | Some Back, Talking _ | Some Enter, Talking _ -> Out
  | _ -> let () = wait_for_enter g_state g_state.player_one
    (Talking "You have entered an incorrect command") in s_state


let rec get_player_action g_state p_state s_state : fAction =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in let () = print_string ">" in
  let input = read_line () in
  match (process_input input), s_state with
  | Some Action (Move x), Moves ->
    let move_option = try Some (List.find (fun (m:move) -> m.name = x)
        p_state.active_pocamon.moves) with _ -> None in
    begin match move_option with
    | Some m -> FMove m
    | None -> get_player_action g_state p_state s_state end
  | Some Action (Switch x), Pocamon_List _ ->
    let poca_option = try Some (List.find (fun (p:pocamon) -> p.name = x)
        p_state.pocamon_list) with _ -> None in
    begin match poca_option with
    | Some p -> FSwitch p
    | None -> get_player_action g_state p_state s_state end
  | c, _ -> get_player_action g_state p_state (process_screen_action c s_state g_state)

let rec choose_new_pocamon g_state p_state s_state : game_state =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in let () = print_string ">" in
  let input = read_line () in
  let n = match s_state with Pocamon_List x -> x | _ -> -1 in
  match (process_input input) with
  | Some Action (Switch p) ->
    let poca_option = try Some (List.find (fun (poca:pocamon) -> poca.name = p)
      p_state.pocamon_list) with _ -> None in
    begin match poca_option with
    | Some poca -> fst (switch_pocamon poca p_state g_state)
    | None -> choose_new_pocamon g_state p_state s_state end
  | Some Up -> choose_new_pocamon g_state p_state
            (Pocamon_List (if n > 0 then n - 1 else 0))
  | Some Down -> choose_new_pocamon g_state p_state
              (Pocamon_List (if n < 2 then n + 1 else 2))
  | _ -> choose_new_pocamon g_state p_state s_state


let on_faint g_state : game_state =
  let () = print_endline "ON FAINT" in
  if g_state.player_one.active_pocamon.health <= 0 then
    let () = wait_for_enter g_state g_state.player_one
      (Talking (g_state.player_one.active_pocamon.name ^ " fainted!")) in
      choose_new_pocamon g_state g_state.player_one (Pocamon_List 0)
  else if g_state.player_two.active_pocamon.health <= 0 then
    let () = wait_for_enter g_state g_state.player_two
      (Talking (g_state.player_two.active_pocamon.name ^ " fainted!")) in
      choose_new_pocamon g_state g_state.player_two (Pocamon_List 0)
  else
    g_state

let print_result action g_state p_state m_status opp_p_state : unit =
  match m_status, action with
  | Switch_Status, _ ->
    let screen_message = Talking (p_state.name ^
      " switched to " ^
      p_state.active_pocamon.name) in
    wait_for_enter g_state p_state screen_message
  | Attack_Status a, FMove poca_move ->

    let () = (if fst a.self_status_change then
      wait_for_enter g_state p_state
        (Talking (p_state.active_pocamon.name ^ " became healthy!"))
      else ()) in

    let () = print_endline "self status done" in

    begin match snd a.self_status_change with
    | SSleep _ -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is asleep!"))
    | SFreeze _ -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is frozen!"))
    | SParalyze -> wait_for_enter g_state p_state
      (Talking (p_state.name ^ " is paralyzed! It can't move!"))
    | _ ->
      (let poca_used_move = Talking (p_state.name ^ "'s " ^
        p_state.active_pocamon.name ^ " used " ^ poca_move.name) in

      let () = wait_for_enter g_state p_state poca_used_move in
      if not a.missed then
        let () = if (match a.atk_eff with ENormal -> false | _ -> true) then
          let eff =
            match a.atk_eff with
            | ESuper -> "It's super effective!"
            | ENotVery -> "It's not very effective..."
            | _ -> "It's normal effective" (* should never happen *) in
          wait_for_enter g_state p_state (Talking eff)
        else
          () in

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
            (Talking change_string) else ())
      else
        wait_for_enter g_state p_state (Talking ("The attack missed!")))
    end

  | Faint_Status, _ -> ()
  | _ -> failwith "This should never happen (famous last words)"

let print_debuff_info g_state p_state p_debuff : unit =
    match p_debuff with
    | SPoison -> wait_for_enter g_state p_state
        (Talking (p_state.active_pocamon.name ^ " was hurt by poison!"))
    | SBurn -> wait_for_enter g_state p_state
        (Talking (p_state.active_pocamon.name ^ " was hurt by its burn!"))
    | _ -> ()


let rec run_game_turn g_state : game_state =
  let p1_action = get_player_action g_state g_state.player_one Out in
  let () = ignore(List.map (fun (x:move) -> print_endline x.name) g_state.player_two.active_pocamon.moves) in
  let p2_action = get_player_action g_state g_state.player_two Out in
  let new_g_state, printfo = apply_fight_sequence g_state p1_action p2_action in

  let () =
    if printfo.p1_went_first then
      (print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two;
      print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one
      )
    else
      (print_result p2_action new_g_state new_g_state.player_two
        printfo.p2_move_status new_g_state.player_one;
      print_result p1_action new_g_state new_g_state.player_one
        printfo.p1_move_status new_g_state.player_two) in

  let faint_switch_game_state = on_faint new_g_state in

  let status_changed_game_state, debuff_info =
    apply_status_debuffs faint_switch_game_state in

  let () = print_debuff_info status_changed_game_state
    g_state.player_one debuff_info.p1_debuff in
  let () = print_debuff_info status_changed_game_state
    g_state.player_two debuff_info.p2_debuff in

  run_game_turn status_changed_game_state

let start () : unit =
  ignore (run_game_turn (gen_initial_state ()))

let _ = start ()