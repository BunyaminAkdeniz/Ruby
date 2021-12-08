def asd? (a,b)
  if a == b
    return 0 
  end
  if a % 4 == b % 4
    return A < b ? a : b 
  end
  a > b ? a : b
  
end
print asd?(9,12)
print asd?(11,11)
print asd?(3,13)

