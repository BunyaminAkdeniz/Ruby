# frozen_string_literal: true

a = 1
b = 1
c = 1000 - a - b
starting = Time.now
until (a**2) + (b**2) == c**2
  c = 1000 - a - b
  b += 1
  if b == 1000
    a += 1
    b = 1
  end
  p "a #{a}"
  p "b #{b}"
  p "c #{c}"
end
ending = Time.now
p a
p b
p c
puts ending - starting
puts starting
puts ending