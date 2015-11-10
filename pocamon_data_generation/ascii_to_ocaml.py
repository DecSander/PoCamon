final = ""

with open("ascii_art.txt") as f:
  lines = f.readlines()

  final = "ascii = ["
  lines = "".join(lines).split("\n\n\n")
  for line in lines:
    try:
      name = line[:line.index("\n")]
      art = line[line.index("\n")+1:]
      final += "(\"" + name + "\", \n\"" + art + "\");\n\n"
    except:
      break

final = final[:-3] + "]"

r = open("ocaml_ascii_list.ml", "w")
r.write(final)