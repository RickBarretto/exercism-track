(* Rose tree *)
datatype 'a tree = Empty
                 | Elem of 'a 
                 | List of 'a tree list

fun flatten (Empty: int tree): int list = []
  | flatten (Elem x: int tree): int list = [x]
  | flatten (List xs: int tree): int list = 
      List.concat (List.map flatten xs)
      