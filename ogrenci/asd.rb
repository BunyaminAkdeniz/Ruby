# HASHLARDA TAKILIYORUZ
ogrenci_listesi = {}
puts 'Öğrenci kaydınıı sorgulamak için lütfen isminizi giriniz'
ogrenci = gets.chomp

if ogrenci_listesi[ogrenci]
  puts "Öğrenci bulundu. Numaranız #{ogrenci_listesi[ogrenci]}"
else
  puts 'Kayıt bulunamadı. Kayıt oluşturmak için 1 çıkmak için 0 tuşlayınız'
  girdi = gets.chomp.to_i
  until girdi.zero? | girdi == 1
    break if girdi.zero?
    if girdi == 1
      if ogrenci_listesi.values == []
        ogrenci_listesi[ogrenci] = 20_000_000
        puts 'Kaydınız başarıyla oluşturuldu'
        break
      else
        ogrenci_listesi[ogrenci] = ogrenci_listesi.values.max + 1
        puts 'Kaydınız başarıyla oluşturuldu'
        break
      end
    else
      puts 'Eksik veya hatalı tuşladınız. Lütfen terkar deneyiniz'
      girdi = gets.chomp.to_i
    end
  end
end
p ogrenci_listesi