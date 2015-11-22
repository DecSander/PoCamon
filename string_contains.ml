let rec string_contains s sub : bool =
  let sub_length = String.length sub in
  if String.length s < sub_length then
    false
  else
    if String.sub s 0 sub_length = sub then
      true
    else
      string_contains (String.sub s 1 ((String.length s) - 1)) sub