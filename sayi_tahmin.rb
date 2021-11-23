# frozen_string_literal: true

sayi = rand(1..50)
deneme = 5
kalan_deneme = 0

loop do
  case kalan_deneme
  when 0
    puts 'Tuttuğum sayıyı tahmin et.'
  when deneme
    puts "Deneme hakkınız kalmadı. Doğru cevap #{sayi}"
    break
  end
  try = gets.chomp.to_i
  kalan_deneme += 1
  if try < sayi
    puts "Daha büyük. Kalan deneme: #{kalan_deneme} / #{deneme} "
  elsif try > sayi
    puts "Daha küçük. Kalan deneme: #{kalan_deneme} / #{deneme} "
  elsif try == sayi
    puts 'Tebrikler. Doğru Cevap'
    break
  end
end
