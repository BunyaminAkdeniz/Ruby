
puts 'Pi sayısının hassasiyetini giriniz. Hassiyetiniz büyüdükçe hesaplama süresi artacaktır. Önerilen değer: 10_000 - 100_000_000'
sensibility = gets.chomp.to_i
odd = []
sayac = 0
pi = 0.0
sensibility.times { |i| odd << i if i.odd?}
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