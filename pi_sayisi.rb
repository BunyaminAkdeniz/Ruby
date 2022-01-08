sensibility = 100000000
odd = []
sayac = 0
pi = 0.0
index.times { |i| odd << i if i.odd?}
odd.each do |num|
  if sayac.even?
    pi += (4.00 / num)
    sayac += 1
  else
    pi -= (4.00 / num.to_f)
    sayac += 1
  end
end
puts pi