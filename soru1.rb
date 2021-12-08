# frozen_string_literal: true

# SORU 1
p "1'den girdiğiniz sayıya kadar kalansız bölünen sayıyı görmek için bir sayı giriniz"
sayi = gets.chomp.to_i
sayi_to_one = []
until sayi.zero?
  sayi_to_one << sayi
  sayi -= 1
end
p sayi_to_one.reduce(1) { |acc, n| acc.lcm(n) }

