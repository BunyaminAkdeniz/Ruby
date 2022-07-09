# frozen_string_literal: true

sonuc = []

harfler = ('a'..'z').to_a + %w[a b
                               c] + ('A'..'Z').to_a + %w[A B
                                                         C] + [' ', ' ', ' ', ' ',
                                                               ' '] + %w[1 2 3 4 5 6 7 8 9 1 2 3]
def bul_degistir(harfler, harf)
  harfler[harfler.find_index(harf) + 1]
end
puts 'Sezar ile sifrelemek istediginiz metni giriniz. Turkce karakter kullanmayınız!'
girdi = gets.chomp
girdi.split('').each do |harf|
  sonuc << bul_degistir(harfler, harf)
end
puts(sonuc.join)
