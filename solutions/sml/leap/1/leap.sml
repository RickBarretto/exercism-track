fun isDivisibleBy x y =
    (y <> 0) andalso (x mod y = 0)

fun isLeapYear year =
    (isDivisibleBy year 400) orelse 
    (isDivisibleBy year 4 andalso not (isDivisibleBy year 100))
