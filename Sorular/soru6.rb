input = 702
a = 1
b = 1
c = input - (a + b)
until (a**2 + b**2) == c**2
  b += 1
  c = input - (a + b)
  if b == input
    b = 1
    a += 1
    c = input - (a + b)
    break if a == input
  end
end
p "#{a}    #{b}     #{c}"
