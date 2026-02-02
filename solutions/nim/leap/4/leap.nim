template isDivisibleBy(x, y: int): bool =
  0 == x.mod(y)
  
proc isLeapYear*(year: int): bool =
  year.isDivisibleBy(400) or (
    year.isDivisibleBy(4) and 
    not year.isDivisibleBy(100)
  )
