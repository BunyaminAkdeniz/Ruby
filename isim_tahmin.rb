# frozen_string_literal: true

puts '1 ile 10000 arasında bir sayı tutunuz'
sayi = gets.chomp.to_i
correct = true
while correct
  tahmin = rand(1..10_000)
  puts tahmin
  if tahmin == sayi
    puts "doğru cevap #{tahmin}"
    break
  end
end
