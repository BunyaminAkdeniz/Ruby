# frozen_string_literal: true

guvenlik = true

while guvenlik
  puts 'kullanıcı adı giriniz'
  kullanici_adi = gets.chomp
  puts 'sifre giriniz'
  sifre = gets.chomp
  if kullanici_adi == 'admin' && sifre == '123456'
    puts 'giriş yapıldı'
    guvenlik = false
  elsif kullanici_adi == 'q' || sifre == 'q'
    puts 'çıkış komutu algılandı'
    puts 'çıkış yapılıyor'
    guvenlik = false
  else
    puts 'yanlış kullanıcı adi veya şifre'
  end
end
