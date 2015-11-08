(*
* An action that the player can take as his/her turn -
* Use a pocamon's move, or switch pocamon
*)
type action = Move of move | Switch of pocamon

(*
* Current state information about a player
*)
type player_state = {
        name : bytes;
        active_pocamon : pocamon;
        pocamon_list : pocamon list;
        is_computer : bool
  }

(*
* Info that is available to both players during each of their turns
*)
type public_info = {
      player_one_active_pocamon : pocamon;
      player_two_active_pocamon : pocamon;
      player_one_remaining_pocamon : int;
      player_two_remaining_pocamon : int
}

(*
* The overall state of the game, containing information on both players and
* the general state of the battle
*)
type game_state = {
      player_one : player_state;
      player_two : player_state;
      battle_info : public_info
      }

(*
* Prompts the user for an action to be taken. Player can also request
* information is printed during this time
*)
val get_player_action : player_state -> public_info -> action

(*
* Takes in the state of the game and the actions of both players, processes
* them and returns the new state of the game after the actions have taken place
*)
val fight : game_state -> action -> action -> game_state

(*
* The recursive driver for the game - takes in the initial game state at first,
* gets the actions from each player, calls fight, and passes the new game state
* returned by fight as a recursive call
*
* Tail recursive
*)
val do_battle: game_state -> game_state

(*
* Generates the initial state of the game using information from various text
* files. Randomizes the pocamon each player has and the starting pocamon
*)
val gen_initial_state : unit -> game_state

(*
* Calls gen_initial_state then passes it into do_battle to start the game
* ALso requests player names and game mode from the user
*)
val start  : unit -> unit
