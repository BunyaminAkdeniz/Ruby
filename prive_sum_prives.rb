# 2 asal sayının toplamı biçiminde yazılabilen asal sayılar

private
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

array = asal_sayilari_kumele(1000)
sonuc = []
array.each do |asal|
  sonuc << asal if array.include?(asal + 2)
  sonuc.uniq!
end
p sonuc