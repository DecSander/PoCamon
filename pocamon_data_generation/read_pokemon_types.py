def split_into_pokemon(lines):
    pokedict = {}
    i = 0
    while(i < len(lines)):
        name = lines[i].strip()
        i += 2
        moves = []
        while(i < len(lines) and len(lines[i].strip()) > 0):
            moves.append(lines[i].strip())
            i += 1
        pokedict[name] = moves
        i += 2
    return pokedict


with open("FinalLearnset.txt") as f:
    content = f.readlines()


print (split_into_pokemon(content))

