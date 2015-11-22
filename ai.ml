open Types
type ai_player = P1 | P2

let status_score (s: pStatus) :float =
  match s with
  | SNormal -> 0
  | SPoison -> 0.2
  | SBurn -> 0.3
  | SSleep n -> (float_of_int n) *. 0.2
  | SParalyze -> 0.4
  | SFreeze n -> (float_of_int n) *. 0.2

let health_score (p_list: pocamon list) (score: float) :float =
  match p_list with
  | [] -> score
  | h::t -> health_score t
    (score +. (((float_of_int h.health) /.
                (float_of_int h.stats.max_hp))) ** 2.0)

let player_score (ps: player_state) :float =
  let status = status_score ps.active_pocamon.status in
  let health = health_score ps.pocamon_list 0 in
  health_score -. status_score

let game_score (ai: ai_player) (gs: game_state) :float =
  match ai with
  | P1 -> (player_score gs.player_one) -. (player_score gs.player_two)
  | P2 -> (player_score gs.player_two) -. (player_score gs.player_one)