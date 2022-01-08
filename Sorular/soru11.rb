def bolenleri_topla(numara)
  bolen = numara - 1
  bolenler = []
  sayi_ve_bolenleri_toplami = []
  until bolen.zero?
    bolenler << bolen if (numara % bolen).zero?
    bolen -= 1
  end
  sayi_ve_bolenleri_toplami << numara
  sayi_ve_bolenleri_toplami << bolenler.reduce(&:+)
  return sayi_ve_bolenleri_toplami
end

i = 10000
sayilarim = []
sayilarim_ve_bolenleri = []
until i.zero?
  sayilarim << i 
  i -= 1
end
sayilarim_ve_bolenleri = sayilarim.map {|sayi| bolenleri_topla(sayi) }
sayi_bolen_tersten = []
sayilarim_ve_bolenleri.each do|dizi|
  sayi_bolen_tersten << dizi.reverse 
end

p sayi_bolen_tersten & sayilarim_ve_bolenleri