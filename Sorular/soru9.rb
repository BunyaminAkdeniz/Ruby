def metod(sayi)
  dizi = []
  until sayi == 1
    if sayi.even?
      sayi /= 2
    elsif sayi.odd?
      sayi = sayi * 3 + 1
    end
    dizi << sayi
  end
  dizi
end
puts 'Sayı giriniz'
sayi = gets.chomp.to_i
dizi = []
until sayi == 1
  dizi << sayi
  sayi -= 1
end
a = []
dizi.each { |index| a << metod(index) }

p a.max_by {|l| l.length}

