template isDivisibleBy(x, y: int): bool =
  0 == x.mod(y)
  
proc isLeapYear*(year: int): bool =
  result = false

  if year.isDivisibleBy(400): 
    return true
  elif year.isDivisibleBy(4) and not year.isDivisibleBy(100):
    return true
