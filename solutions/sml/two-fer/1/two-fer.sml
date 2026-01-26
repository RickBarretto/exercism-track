fun sayTo (name: string) =
  "One for " ^ name ^ ", one for me."

fun name (input: string option) =
  case input of 
      SOME x => sayTo x
    | NONE => sayTo "you"
