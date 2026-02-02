infix |> 
fun x |> f = f x

fun inc(x: int): int =
  x + 1

fun pow (x : int) : int =
  x * x

fun upTo (x : int) : int list =
  List.tabulate (x, inc)

fun sum (xs : int list) : int =
  foldl op+ 0 xs

fun squareOfSum (n : int) : int =
  n 
    |> upTo 
    |> sum 
    |> pow

fun sumOfSquares (n : int) : int =
  n
    |> upTo
    |> List.map pow
    |> sum

fun differenceOfSquares (n : int) : int =
  squareOfSum n - sumOfSquares n
