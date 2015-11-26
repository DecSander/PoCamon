## NOTE Some of the files were slightly modified from their orignal form before running this script

'''
DATA FORMAT:

{
"BULBASAUR": {
    "stats": {"HP": 45, "ATK", 49, "DEF": 49, "SPD":45, "SAT":65, "SDF":65},
    "types": ["GRASS","POSTION"],
    "moves": ["HEADBUTT", "CURSE", "TOXIC", "HIDDEN_POWER",...],
    "ascii" : "<ASCII>"
}, ...
}'''

def process_moves(s):

    i=0
    while i < len(s):
        if(">" in s[i] or len(s[i])< 2):
            del s[i]
        else:
            s[i] = s[i].upper().replace("\n","")
            i += 1
    return s

# returns data as described in DATA FORMAT
def scrap_base_stats(lines):
    i = 0
    data = {}
    while i < 3628:
        if "BaseData::" in lines[i]:
            name = lines[i].split("BaseData")[0].upper()
            i += 3
            stats = lines[i].strip()[2:].replace(" ", "").split(",")
            HP, ATK, DEF, SPD, SAT, SDP = stats[0], stats[1], stats[2], stats[3], stats[4], stats[5]
            i += 3
            types = lines[i].strip()[2:].replace(" ", "").split(",")
            while("tmhm" not in lines[i]):
                i += 1
            i += 1
            moves = []
            while("; end" not in lines[i]):
                m = lines[i].strip().replace("tmhm","").replace(" ", "").replace("_"," ").split(",")
                if len(m) > 1:
                    moves += m
                i += 1
            stats = {"HP":HP, "ATK":ATK, "DEF": DEF, "SPD": SPD, "SAT": SAT, "SDP":SDP}
            data[name] = {"stats": stats, "types": types, "moves": moves, "ascii":""}
        i += 1

    return data


# data must be dictionary as describe in DATA FORMAT
# returns data with evos attacks appened to moves
def scrap_evos_attacks(lines, data):
    i = 0
    while i < len(lines):
        if "EvosAttacks:" in lines[i]:
            name = (lines[i].split("EvosAttacks")[0]).upper()
            if name in data.keys():
                i += 3
                newMoves = []
                while ";" not in lines[i]:
                    m  = lines[i].strip().replace(" ","").split(",")[1].replace("PSYCHIC_M", "PSYCHIC").replace("_", " ")
                    if len(m) > 1:
                        newMoves.append(m)
                    i += 1
                data[name]["moves"] += newMoves
        i += 1
    return data

# data must be dictionary as describe in DATA FORMAT
# returns data with evos updated ascii
def scrap_ascii(lines, data):
    i = 0
    while i < len(lines):
        if len(lines[i].replace(" ", "")) > 1:  # this is a line with a name
            name = lines[i].strip()
            i += 1
            ascii = ''
            while i <len(lines) and len(lines[i].replace(" ", "")) > 1:  # we are not still looking at a line with art
                ascii += str(lines[i]).replace("M"," ")
                i += 1
            ascii = ascii[:-1] # remove last new line
            data[name]["ascii"] = ascii
        i += 1
    return data


with open("base_stats.asm") as f:
    base_stats = f.readlines()

with open("evos_attacks.asm") as f:
    evos_attacks = f.readlines()

with open("ascii_art.txt") as f:
    ascii_art = f.readlines()

with open("battle_moves.s") as f:
    battle_moves = f.readlines()


data = scrap_base_stats(base_stats)
data = scrap_evos_attacks(evos_attacks, data)
data = scrap_ascii(ascii_art, data)

allmoves = set()

with open("effects.txt") as f:
    real_moves = f.readlines()

real_moves = process_moves(real_moves)

with open("pocadex.ml", 'w') as f:

    f.write('module PokeDex = Map.Make(String)\n')
    f.write('let dexmap = PokeDex.empty\n')
    for pocamon in data.keys():
        if pocamon == "ditto": continue
        lst = ["IRON TAIL", "THIEF", "STEEL WING", "TR MORNDAY", "TR NITE", 'CURSE',  "FAINT ATTACK", "FIRE STONE", "BELLY DRUM", "PSYCHIC"]
        for m in lst:
            try:
                data[pocamon]["moves"].remove(m)
            except:
                pass
        if 'CURSE' in data[pocamon]["moves"]:
            data[pocamon]["moves"].remove('CURSE')
        allmoves = allmoves.union(set(data[pocamon]["moves"]))
        allmoves.remove
        moves = '['
        for move in data[pocamon]["moves"]:
            if move.upper() in real_moves:
                moves += '"{0}";'.format(move)
        moves += "]"
        types = '("{0}", "{1}")'.format(data[pocamon]["types"][0], data[pocamon]["types"][1])
        sd = data[pocamon]["stats"]
        #  need double brances because of the .format
        stats = "{{max_hp={0}; attack={1}; defense={2}; speed={3}; sp_attack={4};sp_defense={5};}}".format(sd["HP"], sd["ATK"], sd["DEF"], sd["SPD"], sd["SAT"], sd["SDP"] )
        f.write('let dexmap = PokeDex.add "{0}" {{\nname="{0}"; \nlearnable_moves={1};\nstats={2};\npoca_type={3}; \nascii="{4}"}} dexmap\n\n'.format(pocamon, moves, stats, types, data[pocamon]['ascii']))


print '[',
for move in allmoves:
    print '"{0}";'.format(move),
print "]"

