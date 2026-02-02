infix |> 
fun x |> f = f x

(* Rose tree *)
datatype 'a tree = Empty
                 | Elem of 'a 
                 | List of 'a tree list

fun flatten (Empty: int tree): int list = []
  | flatten (Elem x: int tree): int list = [x]
  | flatten (List xs: int tree): int list = 
      xs |> List.map flatten
         |> List.concat
      