proc isLeapYear*(year: int): bool =
  result = false

  if (0 == year.mod(400)): 
    return true
  elif (0 == year.mod(4)) and not (0 == year.mod(100)):
    return true
