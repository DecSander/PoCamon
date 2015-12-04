type node = {mutable value: string; mutable EOW: bool; 
                 mutable children: tre}
and type tre = node list

let empty (): string t = 
	[]

let compare (i1: 'a) (i2: 'a) = 
	if i1 > i2 then `Greater else
	if i1 < i2 then `Less else
	`Equal

type hResult = Split of int | Child | Cut | EOW
let handle_node (s1: string) (s2: string) = 
	let rec handle_node' (place: int) = 
	  match compare place (String.length s1), 
	  compare place (String.length s2)  with
	  | `Less, `Less  -> if (String.sub s1 place 1) = (String.sub s2 place 1) 
	  				     then handle_node' (place + 1)
	  				     else Split place
	  | 'Equal, 'Less ->
	  | 'Greater, 'Less -> Child
	  | 'Less, 'Equal ->
	  | 'Less, 'Greater -> Cut
	  | 'Equal, 'Equal, ->
	  | 'Greater, 'Equal, ->
	  | 'Equal, 'Greater, ->
	  | 'Greater, 'Greater, -> EOW
	handle_node' 0


let add (s: string) (tre: tre): tre =
  match tre with
  | [] -> [{value=s; EOW =true; children = []}]
  | h::t -> match handle_node 






