open Unix

let setup () = 
  (* Credit to Niki Yoshiuchi from http://stackoverflow.com/questions/4130048/recognizing-arrow-keys-with-stdin*)
  let terminfo = tcgetattr stdin in
  let newterminfo = {terminfo with c_icanon = false; c_vmin = 1; 
  c_vtime = 10000; c_echoe=true} in
  at_exit (fun _ -> tcsetattr stdin TCSAFLUSH terminfo); (* reset stdin when you quit*)
  tcsetattr stdin TCSAFLUSH newterminfo

let get_word (lst: string list) = 
	List.fold_right (fun v a -> v^a) lst ""

let find_back (lst: string list): bool =
	List.mem "\127" lst

let find_tab (lst: string list): bool =
	List.mem "\t" lst

let find_newline (lst: string list): bool =
	List.mem "\n" lst

let remove_last_two (lst: string list): string list = 
	match List.rev lst with 
	| [] -> []
	| h1::h2::t -> List.rev t
	| h::t -> List.rev t

let remove_last_one (lst: string list): string list = 
	match List.rev lst with 
	| [] -> []
	| h::t -> List.rev t

let rec string_contains s sub : bool =
  let sub_length = String.length sub in
  if String.length s < sub_length then
    false
  else
    if String.sub s 0 sub_length = sub then
      true
    else
      string_contains (String.sub s 1 ((String.length s) - 1)) sub

let find_matches words acc = 
	List.sort (fun v1 v2 -> if v1 <= v2 then -1 else 1) 
		  				(List.filter (fun s -> (String.sub s 0 
		  					(min (List.length acc) (String.length s)))= get_word acc) words)

let print_text s : unit= 
	 print_string (Bytes.make (80) ' ');
	 print_string("\r|>"^(s));
	 flush Pervasives.stdout

(* Pre: defaults must be non-empty *)
let get_input (words: string list) (defaults: string list) =
	let rec go (acc: string list): string = 
	  
	  let handle_back (): string = 
		  let newl = remove_last_two acc in
		  print_text (get_word newl);
		  go newl in
	
		let handle_tab (): string =
		 let acc = remove_last_one acc in
		 match find_matches words acc with
		  | [] ->   failwith "error this should be handled by handle_typing"
		  | h::t -> print_string (Bytes.make (80) ' ');
		  					print_string ("\027[37m\r|> \027[32m"^h);
		  					flush Pervasives.stdout;
		  					let c = really_input_string Pervasives.stdin 1 in 
			 				  go (acc@[c]) in
 (*let () = print_string (Bytes.make (80) ' ') in
				  if (string_contains h "Switch" && (String.length (get_word acc) < 6))
				  then
							let () = print_string ("\027[37m\r|> \027[32m"^"Switch ") in
							let () = flush Pervasives.stdout in
 				  		go  (acc@["w"]@["i"]@["t"]@["c"]@["h"]) 
 				  else 
							let () = print_string ("\027[37m\r|> \027[32m"^h) in
							let () = flush Pervasives.stdout in
 				  		go (acc@[h]) in *)

		let handle_typing (): string =
		  match find_matches words acc with
		  | [] -> let _ = Sys.command "printf '\a'" in
		  			  let newl = remove_last_one acc in
							print_text (get_word newl);
							go newl
			| h::t -> let w = get_word acc in
								print_string (Bytes.make (80) ' ');
								print_string ("\r\027[37m   "^h);
								print_string ("\r|> \027[32m"^w);
								flush Pervasives.stdout;
							  go (acc@[really_input_string Pervasives.stdin 1]) in

		let handle_defaults () = 
			print_string (Bytes.make (80) ' ');
			print_string ("\r\027[37m   ");
			print_string (List.hd defaults);
			List.iter (fun s -> print_string (" | "^s)) (List.tl defaults);
			print_string ("\r|> ");
			flush Pervasives.stdout;
			go (acc@[really_input_string Pervasives.stdin 1]) in



	  match find_tab acc, find_back acc, find_newline acc, List.length acc with
	  | _, _, _, 0 -> handle_defaults ()
	  | _, _, true, _ -> print_string ("\027[37m "); get_word acc
	  | _ , true, _, _ ->  handle_back ()
	  | true, _, _, _ -> handle_tab ()
	  | false, false, false, _ -> handle_typing () in
	go []
	

let _ = setup ()
let _ = get_input ["Fight"; "Bag"; "Run"; "Pocamon"] ["Fight" ; "Bag" ; "Pocamon" ; "Run"]
