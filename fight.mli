open Pocamon

type moveName : string
type damage : int
type playerName : string
type pocamonName : string

type battle_status :
| bNormal of pocamon * moveName * pEffect * damage * pStatus
| bChangePocamon of playerName * pocamonName
| bFaint of pocamonName

(*
* Takes in an action and returns the state of the game after that action
* has taken place
*)
val do_single_move : player_state -> action -> game_state -> game_state

(*
* Applys the single attack to the game state
*)
val apply_attack : player_state -> move -> game_state -> game_state

(*
* Switches the active pocamon of the player making the move
*)
val switch_pokemon : pocamon -> player_state -> game_state
