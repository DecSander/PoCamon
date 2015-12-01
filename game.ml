open Types
open Io
open Ai
open Fight
open PocaDex

let bag_jokes = ["There is a time and a place for everything. But not now";
  "Steroids are bad - how could you do that to an innocent pocamon?";
  "Don't do drugs, kids";
  "Swig, swag, grab my bag... Or not"]

let trainers = [|{start_text="sid_start"; name="sid"; end_text="sid_end";
                  pocamon_list=["PIKACHU"; "BULBASAUR"; "SLOWPOKE"; "SPEAROW"; "SHELLDER"; "KRABBY"]};
                 {start_text="mike_start"; name="mike"; end_text="mike_end";
                  pocamon_list=["EXEGGUTOR"; "MAGNEMITE"; "RHYDON"; "CLEFABLE"; "ARBOK"; "MR.MIME"]};
                 {start_text="white_start"; name="white"; end_text="white_end";
                  pocamon_list=["GROWLITHE"; "GRIMER"; "PIDGEOT"; "DRAGONITE"; "CHARMELEON"; "KADABRA"]};
                 {start_text="fan_start"; name="fan"; end_text="fan_end";
                  pocamon_list=["ODDISH"; "PSYDUCK"; "CHARIZARD"; "ONIX"; "BEEDRILL"; "ELECTRODE"]};
                 {start_text="gries_start"; name="gries"; end_text="gries_end";
                  pocamon_list=["EEVEE"; "VILEPUME"; "POLIWRATH"; "HAUNTER"; "NIDORINO"; "MACHOKE"]};
                 {start_text="kleinberg_start"; name="kleinberg"; end_text="kleinberg_end";
                  pocamon_list=["CUBONE"; "MAGNETON"; "KOFFING"; "GASTLY"; "PARAS"; "VENOMOTH"]};
                 {start_text="clarkson_start"; name="clarkson"; end_text="clarkson_end";
                  pocamon_list=["TANGELA"; "TENTACRUEL"; "MANKEY"; "GOLEM"; "MEWTWO"; "DRAGONAIR"]}|]

let current_trainer = ref 0

let rec get_new_pocamon p_list : pocamon =
  let new_poca = get_random_pocamon () in
  if not (List.mem new_poca.name (List.map (fun (x:pocamon) -> x.name) p_list))
  then new_poca
  else get_new_pocamon p_list

let create_public_info g_state : public_info =
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

let rec wait_for_enter g_state p_state s_state : unit =
  let () = print_screen p_state (create_public_info g_state) s_state in
  let input = get_input [""] [""] in
  match (process_input input) with
  | Some Enter -> ()
  | _ -> wait_for_enter g_state p_state s_state


let gen_next_state initial_state g_state : game_state =
  if !current_trainer = 6 then
    let () = wait_for_enter g_state g_state.player_one (Talking ("You won!")) in
    exit 0
  else
  wait_for_enter g_state (g_state.player_one) (Talking (trainers.(!current_trainer).end_text));
  (current_trainer := !current_trainer + 1);
  let player_one_name = g_state.player_one.name in
  let against_ai = Elite in
  let trainer = trainers.(!current_trainer) in
  let player_two_name = trainer.name in
  let player_one_pocamon = initial_state.player_one.active_pocamon ::
                           initial_state.player_one.pocamon_list in
  let player_two_pocamon = List.fold_left
    (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()] in
  let player_one_active_pocamon = List.hd player_one_pocamon in
  let player_two_active_pocamon = List.hd player_two_pocamon in
  let player_one_rec =
  {
    name = player_one_name;
    active_pocamon = player_one_active_pocamon;
    pocamon_list = List.tl player_one_pocamon;
    is_computer = Human
  } in
  let player_two_rec =
  {
    name = player_two_name;
    active_pocamon = player_two_active_pocamon;
    pocamon_list = List.tl player_two_pocamon;
    is_computer = against_ai
  } in
  wait_for_enter g_state (g_state.player_one)
                (Talking (trainers.(!current_trainer).start_text));

  {
    player_one = player_one_rec;
    player_two = player_two_rec;
  }

let is_human = function
  | Human -> true
  | _ -> false

let is_elite = function
  | Elite -> true
  | _ -> false

let is_rival = function
  | Rival -> true
  | _ -> false

let gen_initial_state () : game_state =
  (* Must request players name and whether to play against a computer *)
  print_size_screen ();
  print_start "What is your name, player one?";
  print_string "|> ";
  let player_one_name = readl io_channel in
  let rec get_against_ai () : ai =
    print_start "Would you like to play against your rival, or a human?";
    let input = String.uppercase
      (get_input ["RIVAL";"HUMAN"; "ELITE7"] ["RIVAL";"HUMAN"; "ELITE7"]) in
      if input = "RIVAL" then
        Rival
      else if input = "HUMAN" then
        Human
      else if input = "ELITE7" then
        Elite
      else
        get_against_ai () in
  let against_ai = get_against_ai () in
  let player_two_name = if is_elite against_ai then
      trainers.(!current_trainer).name
    else if is_rival against_ai then
      (print_start "What is your rival's name?";
      print_string "|> ";
      readl io_channel)
    else
      (print_start "What is your name, player two?";
      print_string "|> ";
      readl io_channel)
    in
  let player_one_pocamon = (List.fold_left
    (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()]) in
  let player_two_pocamon =
    if is_elite against_ai
    then List.map (fun x -> get_pocamon_by_name x)
                  trainers.(!current_trainer).pocamon_list
    else List.fold_left
      (fun acc un -> (get_new_pocamon acc)::acc) [] [();();();();();()] in
  let player_one_active_pocamon = List.hd player_one_pocamon in
  let player_two_active_pocamon = List.hd player_two_pocamon in
  let player_one_rec =
  {
    name = player_one_name;
    active_pocamon = player_one_active_pocamon;
    pocamon_list = List.tl player_one_pocamon;
    is_computer = Human
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

let initial = gen_initial_state ()

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
  let defaults =
    match s_state with
    | Out -> ["FIGHT";"BAG";"POCAMON";"RUN"],
        ["FIGHT";"BAG";"POCAMON";"RUN"]
    | Moves -> (List.map (fun (x:move) -> x.name)
        p_state.active_pocamon.moves)@["BACK"],
        ["<MOVE>";"BACK"]
    | Pocamon_List _ ->
        (List.map (fun (x:pocamon) -> "SWITCH " ^ x.name) p_state.pocamon_list)
        @ ["BACK";"UP";"DOWN";"SWITCH "],
        ["SWITCH <Pocamon>"; "UP"; "DOWN"; "BACK"]
    | Talking _ -> [""], [""]
  in
  let input = get_input (fst defaults) (snd defaults) in
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
  let auto_complete_info =
    (List.map (fun (x:pocamon) -> "SWITCH " ^ x.name) p_state.pocamon_list) @
    ["UP";"DOWN";"SWITCH"],
    ["SWITCH <Pocamon>"; "UP"; "DOWN"] in
  let input = get_input (fst auto_complete_info) (snd auto_complete_info) in
  let n = match s_state with Pocamon_List x -> x | _ -> -1 in

  let switch_if_real_pocamon p = 
    try let p' = List.find (fun (poca:pocamon) -> poca.name = p) 
                 p_state.pocamon_list in 
        fst (switch_pocamon p' p_state g_state true)
    with Not_found -> choose_new_pocamon g_state p_state s_state in 


  match (process_input input) with
  | Some Action (Switch p) -> switch_if_real_pocamon p 
  | Some Up -> choose_new_pocamon g_state p_state
               (Pocamon_List (if n > 0 then n - 1 else 0))
  | Some Down -> choose_new_pocamon g_state p_state
                 (Pocamon_List (if n < 1 then n + 1 else 1))
  | _ -> choose_new_pocamon g_state p_state s_state

let game_over g_state winner : game_state =
  let end_message = Talking (winner.name ^ " has won!") in
  wait_for_enter g_state winner end_message;
  exit 0

let on_faint g_state : game_state =
  let wfe1 s = wait_for_enter g_state g_state.player_one (Talking s) in
  let wfe2 s = wait_for_enter g_state g_state.player_two (Talking s) in
  let ap s = g_state.player_one.active_pocamon.name ^ s in
  let oap s = g_state.player_two.active_pocamon.name ^ s in
  let pocamon_health1 = g_state.player_one.active_pocamon.health in
  let number_of_pocamon1 = List.length g_state.player_one.pocamon_list in
  let pocamon_health2 = g_state.player_two.active_pocamon.health in
  let number_of_pocamon2 = List.length g_state.player_two.pocamon_list in

  if  pocamon_health1 <= 0 then
      let () = wfe1 (ap " fainted!") in
      if   number_of_pocamon1 > 0 
      then choose_new_pocamon g_state g_state.player_one (Pocamon_List 0)
      else game_over g_state g_state.player_two
  
  else if pocamon_health2 <= 0 then
      let () = wfe2 (oap " fainted!") in
      if   number_of_pocamon2 > 0 then
        if is_human g_state.player_two.is_computer 
        then choose_new_pocamon g_state g_state.player_two (Pocamon_List 0)
        else let new_poca = 
          get_switch_poca g_state.player_one g_state.player_two false g_state in
          fst (switch_pocamon new_poca g_state.player_two g_state true)
      else
        if not (is_human g_state.player_two.is_computer) 
        then gen_next_state initial g_state
        else game_over g_state g_state.player_one
  else
    g_state

let print_result action g_state p_state m_status opp_p_state : unit =
  (* wait for enter *)
  let wfe s = wait_for_enter g_state p_state (Talking s) in
  (* active pocamon *)
  let ap s = p_state.active_pocamon.name ^ s in
  (* opponent's active pocamon *)
  let oap s = opp_p_state.active_pocamon.name ^ s in
  (* active player/user *)
  let user s = p_state.name ^ s in

  let print_if_healed b = if b then wfe (ap " became healthy!") in
  
  let print_attack move = wfe (user ("'s "^ap(" used "^move))) in

  let print_effectiveness = function
    | ENormal -> () 
    | ESuper ->  wfe "It's super effective!"
    | ENotVery -> wfe "It's not very effective..."
    | EImmune -> wfe ("It doesn't affect enemy "^ (oap "")) in

  let print_status_change = function
      | true, SPoison ->  wfe (user ("'s "^ap " became poisoned!"))
      | true, SBurn ->  wfe (user ("'s "^ap " was burned!"))
      | true, SSleep _ ->  wfe (user ("'s "^ap " fell asleep!"))
      | true, SParalyze ->  wfe (user ("'s "^ap " became paralyzed!"))
      | true, SFreeze _ ->  wfe (user ("'s "^ap " became frozen!"))
      | true, SNormal -> wfe (user ("'s "^ap " is healthy again!"))(*This should never happen *)
      | false, _ -> () in

  let print_effect = function 
    | MNone | MExplode | MCharge | MChargeNoHit | MPriorityHit -> ()
    | MRecover -> wfe (ap " recovered health!")
    | MRecoil -> wfe (ap " is hit with recoil!")
    | MAttack 1 -> wfe (ap  "'s attack rose!")
    | MAttack 2 -> wfe (ap  "'s attack sharply rose!")
    | MAttack (-1) -> wfe (oap "'s attack fell!")
    | MAttack (-2) -> wfe (oap "'s attack sharply fell!")
    | MDefense 1 -> wfe (ap "'s defense rose!")
    | MDefense 2 -> wfe (ap "'s defense sharply rose!")
    | MDefense (-1) -> wfe (ap "'s defense fell!")
    | MDefense (-2) -> wfe (oap "'s defense sharply fell!")
    | MSpecDefense 1 -> wfe (ap "'s special defense rose!")
    | MSpecDefense 2 -> wfe (ap "'s special defense sharply rose!")
    | MSpecDefense (-1) -> wfe (oap "'s special defense fell!") 
    | MSpecDefense (-2) -> wfe (oap "'s special defense sharply fell!")
    | MSpecAttack 1 -> wfe (ap "'s special attack rose!")
    | MSpecAttack 2 -> wfe (ap  "'s special attack sharply rose!")
    | MSpecAttack (-1) -> wfe (ap "'s special attack fell!")
    | MSpecAttack (-2) -> wfe (oap  "'s special attack sharply fell!")
    | MSpeed 1 -> wfe (ap "'s speed rose!")
    | MSpeed 2 -> wfe (ap "'s speed sharply rose!") 
    | MSpeed (-1) -> wfe (oap "'s speed fell!")
    | MSpeed (-2) -> wfe (oap "'s speed sharply fell!")
    | MAllStatsUp -> wfe (ap "'s stats rose!")
    | MLeech -> wfe (ap (" drained " ^ oap (" 's health!")))
    | Mohko -> wfe "It's a one hit KO!"
    | _ -> failwith "Stat changes must be nonzero and  between -2 and 2" in

  let print_attack_sequence (a: attack_status) (poca_move: Types.move) = 
    match snd a.self_status_change with
     | SSleep _ -> wfe (ap " is asleep !")
     | SFreeze _ -> wfe (ap " is frozen!")
     | SParalyze -> wfe (ap " is paralyzed! It can't move!")
     | _ ->  print_if_healed (fst a.self_status_change);
             print_attack poca_move.name;
             if a.missed then wfe "The attack missed!"
             else let () = print_effectiveness a.atk_eff in 
                  let () = print_status_change a.opp_status_change in
                  let () = print_effect a.spec_eff in () in 

  match m_status, action with
  | Charge_Status m, _ -> wfe (ap (" is charging "^m.name^"!"))
  | Switch_Status, _ -> wfe (user (" switched to "^(ap "")))
  | Faint_Status, _ -> ()
  | Attack_Status a, FMove poca_move
  | Attack_Status a, FCharge poca_move -> print_attack_sequence a poca_move
  | _ -> failwith "Error: print_result did not find a match"

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
    | None -> if not (is_human g_state.player_two.is_computer) then
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

  let () = print_int (List.length new_g_state.player_two.pocamon_list) in
  let faint_switch_game_state = on_faint(on_faint new_g_state) in

  let status_changed_game_state, debuff_info =
    apply_status_debuffs faint_switch_game_state in

  let () = print_debuff_info status_changed_game_state
    status_changed_game_state.player_one debuff_info.p1_debuff in
  let () = print_debuff_info status_changed_game_state
    status_changed_game_state.player_two debuff_info.p2_debuff in

  let final_game_state = on_faint status_changed_game_state in

  run_game_turn final_game_state printfo

let start_from_state g_state : unit =
  let () = Random.self_init () in

  let a_status1 = {
      atk_eff = ENormal;
      spec_eff = MNone;
      self_status_change = false, SNormal;
      opp_status_change = false,  SNormal;
      missed = false;
  } in

  let b_status = {
      p1_went_first = true;
      p1_move_status = Attack_Status a_status1;
      p2_move_status = Attack_Status a_status1;
  } in

  ignore (run_game_turn g_state b_status)

let start () =
  let () =
  if (is_elite initial.player_two.is_computer) then
  wait_for_enter initial initial.player_one (Talking trainers.(0).start_text)
  else () in
  start_from_state initial

let _ = start ()