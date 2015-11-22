open Types
open Game

let has_no_duplicates lst : bool =
  List.length (List.fold_left
    (fun acc x -> if List.mem x acc then acc else x::acc) [] lst)
  =
  List.length lst


TEST "test gen_initial_state" =
  let rec gen_states x acc =
    if x = 0 then acc else
      gen_states (x-1) (gen_initial_state ()::acc) in
  let states = gen_states 1000 [] in
  not (List.mem false (List.fold_left (fun acc (x:game_state) ->
    (has_no_duplicates(x.player_one.pocamon_list)) ::
    (has_no_duplicates(x.player_two.pocamon_list)) :: acc) [] states))