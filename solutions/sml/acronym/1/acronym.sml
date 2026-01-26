fun wordsIn (phrase: string): string list =
  String.tokens (fn c => 
    c = #" " orelse 
    c = #"-" orelse 
    c = #"_"
  ) phrase

fun initialOf (word: string): char =
  Char.toUpper (String.sub (word, 0))

fun abbreviate (phrase: string): string = 
  String.implode (
    List.map (fn x => initialOf x) (wordsIn phrase)
  )
