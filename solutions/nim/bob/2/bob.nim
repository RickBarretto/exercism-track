import std/sugar
from std/strutils import strip, endsWith, isUpperAscii, isEmptyOrWhitespace, isAlphaAscii
from std/sequtils import any, filter, all, toSeq


proc isQuestion(ask: string): bool =
  ask.strip.endsWith("?")

proc isSilence(ask: string): bool =
  ask.isEmptyOrWhitespace

proc isYell(ask: string): bool =
  let letters = ask.toSeq.filter(x => x.isAlphaAscii)

  letters.all(x => x.isUpperAscii)
    .and(letters != @[])

proc isYellQuestion(ask: string): bool =
  ask.isQuestion() and ask.isYell()

proc hey*(ask: string): string =
  if ask.isSilence:        "Fine. Be that way!"
  elif ask.isYellQuestion: "Calm down, I know what I'm doing!"
  elif ask.isQuestion:     "Sure."
  elif ask.isYell:         "Whoa, chill out!"
  else:                    "Whatever."
