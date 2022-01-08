puts 'Sayı giriniz'
sayi = gets.chomp.to_i
dizi = []
until sayi == 1
  if sayi.even?
    sayi /= 2
  elsif sayi.odd?
    sayi = sayi * 3 + 1
  end
  dizi << sayi
end
print dizi
