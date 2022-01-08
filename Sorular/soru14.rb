def asalsayi(sayi)
  sayi = sayi.to_i
  b = sayi - 1
  until b == 1
    if sayi % b != 0
      b -= 1
    else
      return false
    end
  end
  true
end

def sagdan_sola_rakam_sil(sayi)
  gecici_dizi = sayi.to_s.split('')
  gecici_dizi.pop
  return gecici_dizi.join
end

sayi = 99
saglayan_sayilar = []
p asalsayi(sayi)
until (sayi.to_s.length).zero?
  a = 1
  if sayi.to_i.zero?
    break
  elsif sayi.to_s.length == 1
    if asalsayi(sayi) == true
      saglayan_sayilar << sayi
      a =  sayi.to_i 
      a -= 1
      sayi = a 
    elsif sayi.to_i.zero?
      break
    else
      a = sayi.to_i 
      a -= 1
      sayi = a 
    end
  elsif asalsayi(sayi) == true
    sayi = sagdan_sola_rakam_sil(sayi)
    p sayi
  else
    sayi -= 1
  end
  p saglayan_sayilar
end
p saglayan_sayilar



