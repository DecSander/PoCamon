mystr = '''

'''
mystr = ""
with open("pocamonMoves.asm") as f:
  strlst = f.readlines()

for s in strlst:
  mystr += s + "\n"

def flter(lns):
  newlns = []
  for l in lns:
    if (l != '') and (l[0] == ' ') and ('db' not in l):
      newlns.append(l.replace(" ", "").replace("move", "").replace("_", " "))
  return newlns

def breakup(lns):
  words = []
  for l in lns:
    words.append(l.rsplit(','))
  return words

def mapStatus(lsts):
  for k in lsts:
    if 'POISON' in k[1]:
      k[1] = 'MPoison'
    elif 'BURN' in k[1]:
      k[1] = 'MBurn'
    elif 'SLEEP' in k[1]:
      k[1] = 'MSleep'
    elif 'PARALYZE' in k[1]:
      k[1] = 'MParalyze'
    elif 'FREEZE' in k[1]:
      k[1] = 'MFreeze'
    else:
      k[1] = 'MNormal'
  return lsts

def mapType(lsts):
  for k in lsts:
    if 'NORMAL' in k[3]:
      k[3] = 'TNormal'
    elif 'FIRE' in k[3]:
      k[3] = 'TFire'
    elif 'WATER' in k[3]:
      k[3] = 'TWater'
    elif 'ELECTRIC' in k[3]:
      k[3] = 'TElectric'
    elif 'GRASS' in k[3]:
      k[3] = 'TGrass'
    elif 'ICE' in k[3]:
      k[3] = 'TIce'
    elif 'FIGHTING' in k[3]:
      k[3] = 'TFighting'
    elif 'POISON' in k[3]:
      k[3] = 'TPoison'
    elif 'GROUND' in k[3]:
      k[3] = 'TGround'
    elif 'FLYING' in k[3]:
      k[3] = 'TFlying'
    elif 'PSYCHIC' in k[3]:
      k[3] = 'TPsychic'
    elif 'BUG' in k[3]:
      k[3] = 'TBug'
    elif 'ROCK' in k[3]:
      k[3] = 'TRock'
    elif 'GHOST' in k[3]:
      k[3] = 'TGhost'
    elif 'DRAGON' in k[3]:
      k[3] = 'TDragon'
    else:
      k[3] = 'TNormal'
  return lsts

def gen_command(lsts):
  newlst = []
  for k in lsts:
    if k[3] in ["PNormal", "PFighting", "PFlying", "PGround", "PRock", "PBug", "PGhost", "PPoison"]:
      pCategory = "EPhysical"
    else:
      pCategory = "ESpecial"
    newlst.append("let movedex = MoveDex.add \"" + k[0] + "\" {" + "name=\"" + k[0] + "\"; move_type=" + k[3] + "; status_effect=" + k[1] + "; status_probability=" + k[4] + "; accuracy=" + k[4] + "; damage=" + k[2] + "; max_pp=" + k[5] + "; pp=" + k[5] + "; move_category=" + pCategory + "}" + " movedex")
  return newlst

def start():
  return '''module MoveDex = Map.Make(String)
let movedex = MoveDex.empty\n'''

def gen_full(lsts):
  bigstr = ""
  for k in lsts:
    bigstr += k + "\n"
  return start() + bigstr

lines = gen_full(gen_command(mapType(mapStatus(breakup(flter(mystr.rsplit('\n')))))))

with open("moves.ml", "w") as f:
  f.write(lines)