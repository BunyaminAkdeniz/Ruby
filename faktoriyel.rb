# frozen_string_literal: true

puts 'Lütfen faktoriyel almak istediğiniz sayıyı giriniz.'
elde = 1
girdi1 = gets.chomp
if girdi1 == '0'
  puts '1'
elsif girdi1.to_i.zero?
  puts 'Lütfen bir sayı giriniz'
else
  girdi1 = girdi1.to_i
  until girdi1 == 1
    if girdi1.negative?
      puts "Sayı 0'dan küçük olamaz."
      girdi1 = gets.chomp
    else
      elde *= girdi1
      girdi1 -= 1
    end
  end
  puts elde
end
