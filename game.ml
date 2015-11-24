open Types
open Io
open Ai
open Fight
open PocaDex

let bag_jokes = ["There is a time and a place for everything. But not now";
  "Steroids are bad - how could you do that to an innocent pocamon?";
  "Don't do drugs, kids"]

let rec get_new_pocamon p_list : pocamon =
  let new_poca = get_random_pocamon () in
  if not (List.mem new_poca.name (List.map (fun (x:pocamon) -> x.name) p_list))
  then
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
  print_start "What is your name, player one?";
  print_string "|> ";
  let player_one_name = read_line () in
  print_start "Would you like to play against your rival, or a human?";
  let tinfo = setup () in
  let rec get_against_ai () : bool =
    let input = String.uppercase
      (get_input ["RIVAL";"HUMAN"] ["RIVAL";"HUMAN"]) in
      if input = "RIVAL" then
        true
      else if input = "HUMAN" then
        false
      else
        get_against_ai () in
  let against_ai = get_against_ai () in
  breakdown tinfo;
  let player_two_name = if against_ai then
      (print_start "What is your rival's name?";
      print_string "|> ";
      read_line ())
    else
      (print_start "What is your name, player two?";
      print_string "|> ";
      read_line ())
    in
  let _ = setup () in
  let player_one_pocamon = (List.fold_left
    (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()]) in
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
    is_computer = against_ai
  } in

  {
    player_one = player_one_rec;
    player_two = player_two_rec;
  }

let rec wait_for_enter g_state p_state s_state : unit =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in
  let input = get_input ["\'\'"] [""] in
  match (process_input input) with
  | Some Enter -> ()
  | _ -> wait_for_enter g_state p_state s_state

let process_screen_action comm s_state g_state : screen_state =
  match comm, s_state with
  | Some Fight, Out -> Moves
  | Some Pocamon, Out -> Pocamon_List 0
  | Some Run, Out -> Talking "You can't run from a trainer battle!"
  | Some Bag, Out ->
      Talking (List.nth bag_jokes (Random.int (List.length bag_jokes)))
  | Some Back, Moves -> Out
  | Some Down, Pocamon_List n -> Pocamon_List (if n < 1 then n + 1 else 1)
  | Some Up, Pocamon_List n -> Pocamon_List (if n > 0 then n - 1 else 0)
  | Some Back, Pocamon_List _ -> Out
  | Some Back, Talking _ | Some Enter, Talking _ -> Out
  | _ -> let () = wait_for_enter g_state g_state.player_one
    (Talking "You have entered an incorrect command") in s_state


let rec get_player_action g_state p_state s_state : fAction =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in
  let defaults =
    match s_state with
    | Out -> ["FIGHT";"BAG";"POCAMON";"RUN"],
        ["FIGHT";"BAG";"POCAMON";"RUN"]
    | Moves -> (List.map (fun (x:move) -> x.name)
        p_state.active_pocamon.moves)@["BACK"],
        ["<MOVE>";"BACK"]
    | Pocamon_List _ ->
        (List.map (fun (x:pocamon) -> "SWITCH " ^ x.name) p_state.pocamon_list)
        @ ["BACK";"UP";"DOWN";"SWITCH"],
        ["SWITCH <Pocamon>"; "UP"; "DOWN"; "BACK"]
    | Talking _ -> ["\'\'"], [""]
  in
  let input = get_input (fst defaults) (snd defaults) in
  print_endline input;
  begin match (process_input input), s_state with
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
  | c, _ -> get_player_action g_state p_state
      (process_screen_action c s_state g_state) end


let rec choose_new_pocamon g_state p_state s_state : game_state =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let () = print_endline "" in
  let auto_complete_info =
    (List.map (fun (x:pocamon) -> "SWITCH " ^ x.name) p_state.pocamon_list) @
    ["BACK";"UP";"DOWN";"SWITCH"],
    ["SWITCH <Pocamon>"; "UP"; "DOWN"] in
  let input = get_input (fst auto_complete_info) (snd auto_complete_info) in
  let n = match s_state with Pocamon_List x -> x | _ -> -1 in

  match (process_input input) with
  | Some Action (Switch p) ->
    let poca_option = try Some (List.find (fun (poca:pocamon) -> poca.name = p)
      p_state.pocamon_list) with _ -> None in
    begin match poca_option with
    | Some poca -> fst (switch_pocamon poca p_state g_state true)
    | None -> choose_new_pocamon g_state p_state s_state end
  | Some Up -> choose_new_pocamon g_state p_state
            (Pocamon_List (if n > 0 then n - 1 else 0))
  | Some Down -> choose_new_pocamon g_state p_state
              (Pocamon_List (if n < 1 then n + 1 else 1))
  | _ -> choose_new_pocamon g_state p_state s_state

let game_over g_state winner : game_state =
  let end_message = Talking (winner.name ^ " has won!") in
  let () = wait_for_enter g_state winner end_message in
  exit 0

let on_faint g_state : game_state =
  if g_state.player_one.active_pocamon.health <= 0 then
      let () = wait_for_enter g_state g_state.player_one
        (Talking (g_state.player_one.active_pocamon.name ^ " fainted!")) in
        if List.length g_state.player_one.pocamon_list > 0 then
          choose_new_pocamon g_state g_state.player_one (Pocamon_List 0)
        else
          game_over g_state g_state.player_two
  else if g_state.player_two.active_pocamon.health <= 0 then
      let () = wait_for_enter g_state g_state.player_two
        (Talking (g_state.player_two.active_pocamon.name ^ " fainted!")) in
        if List.length g_state.player_two.pocamon_list > 0 then
          choose_new_pocamon g_state g_state.player_two (Pocamon_List 0)
        else
          game_over g_state g_state.player_one
  else
    g_state

let print_result action g_state p_state m_status opp_p_state : unit =
  match m_status, action with
  | Charge_Status, _ -> wait_for_enter g_state p_state
      (Talking (p_state.active_pocamon.name ^ " is charging!"))
  | Switch_Status, _ ->
    let screen_message = Talking (p_state.name ^
      " switched to " ^
      p_state.active_pocamon.name) in
    wait_for_enter g_state p_state screen_message
  | Attack_Status a, FMove poca_move | Attack_Status a, FCharge poca_move ->

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
          let change_string = opp_p_state.name ^ "'s " ^
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


let rec run_game_turn g_state b_status : game_state =
  let p1_action =
    match g_state.player_one.active_pocamon.charging with
    | None -> get_player_action g_state g_state.player_one Out
    | Some m -> let () = wait_for_enter g_state g_state.player_one
      (Talking (g_state.player_one.active_pocamon.name ^
        "'s move is powering up!")) in
      FCharge m in
  let p2_action =
    match g_state.player_two.active_pocamon.charging with
    | None -> if g_state.player_two.is_computer then
        get_ai_action P2 g_state b_status
        else get_player_action g_state g_state.player_two Out
    | Some m -> let () = wait_for_enter g_state g_state.player_two
      (Talking (g_state.player_two.active_pocamon.name ^
        "'s move is powering up!")) in
      FCharge m in

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
    in

  let faint_switch_game_state = on_faint new_g_state in

  let status_changed_game_state, debuff_info =
    apply_status_debuffs faint_switch_game_state in

  let () = print_debuff_info status_changed_game_state
    status_changed_game_state.player_one debuff_info.p1_debuff in
  let () = print_debuff_info status_changed_game_state
    status_changed_game_state.player_two debuff_info.p2_debuff in

  let final_game_state = on_faint status_changed_game_state in

  run_game_turn final_game_state printfo

let start () : unit =
  let () = Random.self_init () in

  let a_status1 = {
      atk_eff = ENormal;
      self_status_change = false, SNormal;
      opp_status_change = false,  SNormal;
      missed = false;
  } in

  let b_status = {
      p1_went_first = true;
      p1_move_status = Attack_Status a_status1;
      p2_move_status = Attack_Status a_status1;
  } in

  ignore (run_game_turn (gen_initial_state ()) b_status)

let _ = start ()