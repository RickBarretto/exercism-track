import std/strformat
  
proc twoFer*(name = ""): string =
  if name != "":
    fmt"One for {name}, one for me."
  else:
    "One for you, one for me."