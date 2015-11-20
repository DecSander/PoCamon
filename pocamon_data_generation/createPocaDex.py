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
                moves += lines[i].strip().replace("tmhm","").replace(" ", "").split(",")
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
                    newMoves.append(lines[i].strip().replace(" ","").split(",")[1])
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

data = scrap_base_stats(base_stats)
data = scrap_evos_attacks(evos_attacks, data)
data = scrap_ascii(ascii_art, data)


with open("pocadex.ml", 'w') as f:
    f.write('module Pocamon = Map.make(pocamon)\n')
    f.write('let pocadex = Pocamon.empty\n')
    for pocamon in data.keys():
        moves = '['
        for move in data[pocamon]["moves"]:
            moves += '"{0}";'.format(move)
        moves += "]"
        sd = data[pocamon]["stats"]
        #  need double brances because of the .format
        stats = "{{max_hp={0}; attack={1}; defense={2}; speed={3}; sp_attack={4};sp_defense={5};}}".format(sd["HP"], sd["ATK"], sd["DEF"], sd["SPD"], sd["SAT"], sd["SDP"] )
        f.write('let pocadex = Pocamon.add "{0}" {{\nname="{0}"; \nlearnable_moves={1};\nstats={2}; \nascii="{3}"}} pocadex\n\n'.format(pocamon, moves, stats, data[pocamon]['ascii']))
