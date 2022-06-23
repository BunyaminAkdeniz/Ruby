# frozen_string_literal: true

sonuc = []

def asalsayi(sayi)
  b = sayi / 2
  until b == 1
    if sayi % b != 0
      b -= 1
    else
      return false
    end
  end
  true
end

def asal_sayilari_kumele(sayi)
  asal_sayilar = []
  until sayi == 1
    asal_sayilar << sayi if asalsayi(sayi) == true
    sayi -= 1
  end
  asal_sayilar
end

puts "1'den girdiğiniz sayıya kadar asal sayıların toplamı şeklinde yazılabilen asal sayıları görmek için bir sayı giriniz"
input = gets.chomp.to_i
array = asal_sayilari_kumele(input)
array.each do |asal|
  sonuc << asal if array.include?(asal + 2)
  sonuc.uniq!
end
p sonuc
