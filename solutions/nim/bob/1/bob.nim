from std/strutils import strip, endsWith

proc isAQuestion(ask: string): bool =
  if ask == "": return false

  if ask.strip().endsWith("?"): return true
  else: return false

proc isAYell(ask: string): bool =
  result = false

  if ask == "": return false

  for c in ask:
    if c in {'A'..'Z'}:
      result = true
    elif c in {'a'..'z'}:
      return false

proc isAYellQuestion(ask: string): bool =
  if ask.isAQuestion() and ask.isAYell():
    return true
  else:
    return false

proc isSilence(ask: string): bool =
  result = true
  if ask == "":
    return true

  for c in ask:
    if c in {'A'..'Z', 'a'..'z', '0'..'9'}:
      return false

proc hey*(s: string): string =
  if s.isAYellQuestion():
    "Calm down, I know what I'm doing!"
  elif s.isAQuestion():
    "Sure."
  elif s.isAYell():
    "Whoa, chill out!"
  elif s.isSilence():
    "Fine. Be that way!"
  else:
    "Whatever."
