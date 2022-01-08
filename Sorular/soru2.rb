# frozen_string_literal: true
puts "1'den itibaren girdiğiniz sayıya kadar rakamları ardışık olarak artan sayıları görmek için bir sayı giriniz"
sayi = gets.chomp.to_i
yeni = []

until sayi == 1
  gecici = sayi.to_s.split('')
  case gecici.length
  when 2
    yeni << sayi if gecici[0].to_i + 1 == gecici[1].to_i
  when 3
    yeni << sayi if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i
  when 4
    if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i && gecici[2].to_i + 1 == gecici[3].to_i
      yeni << sayi
    end
  when 5
    if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i && gecici[2].to_i + 1 == gecici[3].to_i && gecici[3].to_i + 1 == gecici[4].to_i
      yeni << sayi
    end
  end
  sayi -= 1
end
puts yeni
