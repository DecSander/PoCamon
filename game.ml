open Types
open Io
open Ai
open Fight
open PocaDex

let bag_jokes = ["There is a time and a place for everything. But not now";
  "Steroids are bad - how could you do that to an innocent pocamon?";
  "Don't do drugs, kids";
  "Swig, swag, grab my bag... Or not";
  "Rare candy is one hell of a drug"]

let trainers =
  [{start_text="Prof. White: Welcome to the Elite 7, now prepare to lose";
  name="Prof. White";
  end_text="Prof. White: The next game design project is gonna be to beat you";
  win_text="Prof. White: CS might not be right for you. Maybe try OR";
  pocamon_list=["HORSEA"; "METAPOD";
  "PIDGEOT"; "SPEAROW"; "POLIWAG"; "MEOWTH"]};

  {start_text="Prof. Bracy: Prepare to have your cache cleared";
  name="Prof. Bracy";
  end_text="Prof. Bracy: You optimized the common case faster than I could :(";
  win_text="Prof. Bracy: Am I surprised? Not even a BIT";
  pocamon_list=["ODDISH"; "BELLSPROUT";
  "PARAS"; "CUBONE"; "BEEDRILL"; "VENOMOTH"]};

  {start_text="Prof. Gries: You're gonna need more than just java after this";
  name="Prof. Gries";
  end_text="Prof. Gries: I guess I need more loop invariants";
  win_text="Prof. Gries: Don't worry. There's always the optional final";
  pocamon_list=["EEVEE"; "VILEPLUME";
  "POLIWRATH"; "HAUNTER"; "MR.MIME"; "PSYDUCK"]};

  {start_text="Team Rocket: Prepare for Trouble ... and make it Double";
  name="Team Rocket";
  end_text="Team Rocket: Oh this is PoCamon? We thought it was Pokemon";
  win_text="Team Rocket: Team Rocket blasts off again!";
  pocamon_list=["EKANS"; "VAPOREON";
  "KOFFING"; "MEOWTH"; "PIKACHU"; "GASTLY"]};

  {start_text="Prof. Hopcroft: I won my Turing Award for beating kids like you";
  name="Prof. Hopcroft";
  end_text="Prof. Hopcroft: If only I had more 2-3 Trees";
  win_text="Prof. Hopcroft: I didn't win the Turing Award for nothing";
  pocamon_list=["ARCANINE"; "CHANSEY";
  "MACHAMP"; "ONIX"; "AERODACTYL"; "GYARADOS"]};

  {start_text="Prof. George: My NFA beats your DFA anyday";
  name="Prof. George";
  end_text="Prof. George: I guess optimizing pocamon is an NP hard problem...";
  win_text="Prof. George: I think your proof is backwards";
  pocamon_list=["DRAGONAIR"; "CHARIZARD";
  "RHYDON"; "MEW"; "SNORLAX"; "BLASTOISE"]};

  {start_text="Prof. Clarkson: I'm gonna recurse you into oblivion";
  name="Prof. Clarkson";
  end_text=
    "Prof. Clarkson: Holy Zardoz! I ca-ca-can't believe I lost. Congrats!!!";
  win_text="Prof. Clarkson: You must have used imperative features!";
  pocamon_list=["DRAGONITE"; "ALAKAZAM";
  "GENGAR"; "VENUSAUR"; "MEWTWO"; "LAPRAS"]}]

let gen_next_state (trainer_list: trainer list) initial_state
                      g_state :game_state =
  let trainer = (match trainer_list with
  | [] ->
    let () = wait_for_enter g_state g_state.player_one (Talking ("You won!")) in
    exit 0
  | h::t -> h) in
  let player_one_name = g_state.player_one.name in
  let against_ai = Elite in
  let player_two_name = trainer.name in
  let player_one_pocamon = initial_state.player_one.active_pocamon ::
                           initial_state.player_one.pocamon_list in
  let player_two_pocamon =
    List.map (fun x -> get_pocamon_by_name x) trainer.pocamon_list in
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
  wait_for_enter g_state (g_state.player_one) (Talking (trainer.start_text));

  {
    player_one = player_one_rec;
    player_two = player_two_rec;
  }

let is_human = function
  | Human -> true | _ -> false

let is_elite = function
  | Elite -> true | _ -> false

let is_rival = function
  | Rival -> true | _ -> false

let gen_initial_state () : game_state =
    (* Must request players name and whether to play against a computer *)
    print_size_screen ();
    print_start "What is your name, player one?";
    prints "\n|> ";
    let player_one_name = readl io_channel in
    let against_ai = get_against_ai () in
    let player_two_name = if is_elite against_ai then
        (List.hd trainers).name
      else if is_rival against_ai then
        (print_start "What is your rival's name?";
        prints "\n|> ";
        readl io_channel)
      else
        (print_start "What is your name, player two?";
        prints "\n|> ";
        readl io_channel) in

    let player_one_pocamon = (List.fold_left
      (fun a un -> (get_different_pocamon a)::a) [] [();();();();();()]) in

    let player_two_pocamon =
      if is_elite against_ai
      then List.map (fun x -> get_pocamon_by_name x)
                    (List.hd trainers).pocamon_list
      else List.fold_left
        (fun a un -> (get_different_pocamon a)::a) [] [();();();();();()] in

    let player_one_active_pocamon = List.hd player_one_pocamon in
    let player_two_active_pocamon = List.hd player_two_pocamon in

    let player_one_rec = {name = player_one_name;
                          active_pocamon = player_one_active_pocamon;
                          pocamon_list = List.tl player_one_pocamon;
                          is_computer = Human} in
    let player_two_rec ={ name = player_two_name;
                          active_pocamon = player_two_active_pocamon;
                          pocamon_list = List.tl player_two_pocamon;
                          is_computer = against_ai} in

    { player_one = player_one_rec;
      player_two = player_two_rec; }

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
    | Out -> ["FIGHT";"BAG";"POCAMON";"RUN"], ["FIGHT";"BAG";"POCAMON";"RUN"]
    | Moves -> (List.map (fun (x:move) -> x.name)
        p_state.active_pocamon.moves)@["BACK"], ["<MOVE>";"BACK"]
    | Pocamon_List _ ->
        (List.map (fun (x:pocamon) -> "SWITCH " ^ x.name) p_state.pocamon_list)
        @ ["BACK";"UP";"DOWN";"SWITCH "],
        ["SWITCH <Pocamon>"; "UP"; "DOWN"; "BACK"]
    | Talking _ -> [""], [""] in

  let input = get_input (fst defaults) (snd defaults) in

  match process_input input, s_state with
  | Some Action (Move x), Moves ->
    (try FMove (List.find (fun (m:move)->m.name=x) p_state.active_pocamon.moves)
     with Not_found -> get_player_action g_state p_state s_state)
  | Some Action (Switch x), Pocamon_List _ ->
    (try  FSwitch (List.find (fun (p:pocamon)->p.name = x) p_state.pocamon_list)
     with Not_found -> get_player_action g_state p_state s_state)
  | c, _ -> get_player_action g_state p_state
      (process_screen_action c s_state g_state)


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


let check_faint trainer_list initial_state g_state: (game_state * trainer list)=
  let game_over g_state winner : game_state =
    let end_message = Talking (List.hd trainer_list).win_text in
    wait_for_enter g_state winner end_message;
    exit 0 in

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
      then choose_new_pocamon g_state g_state.player_one (Pocamon_List 0),
           trainer_list
      else game_over g_state g_state.player_two, trainer_list

  else if pocamon_health2 <= 0 then
      let () = wfe2 (oap " fainted!") in
      if  number_of_pocamon2 > 0 then
        if is_human g_state.player_two.is_computer
        then choose_new_pocamon g_state g_state.player_two (Pocamon_List 0),
             trainer_list
        else let new_poca =
          get_switch_poca g_state.player_one g_state.player_two false g_state in
          fst (switch_pocamon new_poca g_state.player_two g_state true),
              trainer_list
      else
        if not (is_human g_state.player_two.is_computer)
        then  (match trainer_list with
                | [] -> wfe1 "You won!"; exit 0
                | trainer::tail -> wfe1 trainer.end_text;
                    gen_next_state tail initial_state g_state, tail)
        else  game_over g_state g_state.player_one, trainer_list
  else
    g_state, trainer_list

let print_result action g_state p_state m_status opp_p_state : unit =
  (* wait for enter *)
  let wfe s = wait_for_enter g_state p_state (Talking s) in
  (* active pocamon *)
  let ap s = p_state.active_pocamon.name ^ s in
  (* opponent's active pocamon *)
  let oap s = opp_p_state.active_pocamon.name ^ s in
  (* active player/user *)
  let user s = p_state.name ^ s in
  (* other player/user *)
  let ouser s = opp_p_state.name ^ s in

  let health = opp_p_state.active_pocamon.health in

  let print_if_healed b = if b then wfe (ap " became healthy!") in

  let print_attack move = wfe (user ("'s "^ap(" used "^move))) in

  let print_effectiveness = function
    | ENormal -> ()
    | ESuper ->  wfe "It's super effective!"
    | ENotVery -> wfe "It's not very effective..."
    | EImmune -> wfe ("It doesn't affect enemy "^ (oap "")) in

  let print_status_change = function
      | true, SPoison ->  wfe (ouser ("'s "^oap " became poisoned!"))
      | true, SBurn ->  wfe (ouser ("'s "^oap " was burned!"))
      | true, SSleep _ ->  wfe (ouser ("'s "^oap " fell asleep!"))
      | true, SParalyze ->  wfe (ouser ("'s "^oap " became paralyzed!"))
      | true, SFreeze _ ->  wfe (ouser ("'s "^oap " became frozen!"))
      | true, SNormal -> wfe (ouser ("'s "^oap " is healthy again!"))
                                            (*This should never happen *)
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
     | _ ->
       print_if_healed (fst a.self_status_change);
       print_attack poca_move.name;
       if a.missed
       then wfe "The attack missed!"
       else print_effectiveness a.atk_eff;
            if health > 0 then print_status_change a.opp_status_change;
            print_effect a.spec_eff in

  match m_status, action with
  | Charge_Status m, _ -> wfe (ap (" is charging "^m.name^"!"))
  | Switch_Status, _ -> wfe (user (" switched to "^(ap "")))
  | Faint_Status, _ -> ()
  | Attack_Status a, FMove poca_move
  | Attack_Status a, FCharge poca_move -> print_attack_sequence a poca_move
  | _ -> failwith "Error: print_result did not find a match"

let rec run_game_turn trainer_list initial_state g_state b_status : game_state =

  let get_player_actions () =
    let ap1 s = g_state.player_one.active_pocamon.name ^ s in
    let ap2 s = g_state.player_two.active_pocamon.name ^ s in
    let wfe1 s = wait_for_enter g_state g_state.player_one (Talking (ap1 s)) in
    let wfe2 s = wait_for_enter g_state g_state.player_two (Talking (ap2 s)) in
    let p1_action =
      match g_state.player_one.active_pocamon.charging with
      | None -> get_player_action g_state g_state.player_one Out
      | Some m -> wfe1 "'s move is powering up!"; FCharge m in

    let p2_action =
      match g_state.player_two.active_pocamon.charging with
      | None -> if not (is_human g_state.player_two.is_computer) then
          get_ai_action P2 g_state b_status
          else get_player_action g_state g_state.player_two Out
      | Some m -> wfe2 "'s move is powering up!"; FCharge m in
    apply_fight_sequence g_state p1_action p2_action, p1_action, p2_action in

  let print_fight gs printfo p1_action p2_action =
   let p1 = gs.player_one in
   let p2 = gs.player_two in
   if printfo.p1_went_first then
      (print_result p1_action gs p1 printfo.p1_move_status p2;
       print_result p2_action gs p2 printfo.p2_move_status p1)
    else
     (print_result p2_action gs p2 printfo.p2_move_status p1;
      print_result p1_action gs p1 printfo.p1_move_status p2) in

  let print_debuffs debuff gs  =
    let print_debuff_info p_state a: unit =
      let wfe s = wait_for_enter gs p_state
         (Talking (p_state.active_pocamon.name ^ s)) in
      match a with
      | SPoison ->  wfe " was hurt by poison!"
      | SBurn -> wfe " was hurt by its burn!"
      | _ -> () in

    print_debuff_info gs.player_one debuff.p1_debuff;
    print_debuff_info gs.player_two debuff.p2_debuff in

  let (new_gs, printfo), p1a, p2a = get_player_actions () in
  let ()                          = print_fight new_gs printfo p1a p2a in
  let new_gs', trainers1     = check_faint trainer_list initial_state new_gs in
  let new_gs'', debuff_info       = apply_status_debuffs new_gs' in
  let ()                          = print_debuffs debuff_info new_gs'' in
  let final_gs, trainers2   = check_faint trainer_list initial_state new_gs'' in
  let new_trainers =
    if (List.length trainers1) > (List.length trainers2)
    then trainers2
    else trainers1 in
  run_game_turn new_trainers initial_state final_gs printfo

let start_from_state trainer_list g_state : unit =
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

  ignore (run_game_turn trainer_list g_state g_state b_status)

let start () =
  let start_state = gen_initial_state () in
  let trainer_list = trainers in
  if (is_elite start_state.player_two.is_computer)
  then wait_for_enter start_state start_state.player_one
       (Talking (List.hd trainer_list).start_text);
  start_from_state trainer_list start_state

let _ = start ()