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
* applys a single move made by a pokemon returning a new game state and 
*)
val apply_move : player_state -> move -> game_state -> (battle_status * game_state)

(*
* Switches the active pocamon of the player making the move
*)
val switch_pokemon : pocamon -> player_state -> (battle_status * game_state)