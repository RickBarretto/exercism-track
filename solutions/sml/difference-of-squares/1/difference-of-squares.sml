fun pow (x : int) : int =
  x * x

fun upTo (x : int) : int list =
  List.tabulate (x, fn i => i + 1)

fun sum (xs : int list) : int =
  foldl op+ 0 xs

fun squareOfSum (n : int) : int =
  pow (sum (upTo n))

fun sumOfSquares (n : int) : int =
  sum (List.map pow (upTo n))

fun differenceOfSquares (n : int) : int =
  squareOfSum n - sumOfSquares n
