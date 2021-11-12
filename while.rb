# frozen_string_literal: true

guvenlik = false
until guvenlik
  puts 'kullanıcı adı oluşturun'
  kullanici = gets.chomp
  puts 'kullanıcı adı 3 haneden kısa olamaz' if kullanici.size.to_i < 4
  puts 'şifre giriniz'
  sifre = gets.chomp
  puts 'şifre 3 haneden kısa olamaz' if sifre.length.to_i < 4
  if kullanici.length.size.to_i >= 4 && sifre.size.to_i >= 4
    puts "hoşgeldin #{kullanici}"
      guvenlik = true
  end
end



