# frozen_string_literal: true

require_relative 'data_base_student'
Ogrenci = Struct.new :number, :name, :surname, keyword_init: true

yapilabilecek_islemler = {
  0 => 'çıkış yap',
  1 => 'kayıt oluştur',
  2 => 'kayıt sil'
}

@turkce_karakterler = ('A'..'z').to_a - ['[', ']', '_', ':', '.', ';', ',', '\\', '^', '`']

puts "Sisteme hoş geldiniz.\nYapabileceğiniz işlemler aşşağıda belirlitmiştir.\n"
yapilabilecek_islemler.each do |key, value|
  puts "#{key}: #{value}"
end

puts 'Lütfen yapmak istediğiniz işlemi tuşlayınız'
input = gets.chomp
exit if input == '0'
input = input.to_i
if input == '0'
  exit
else
  dogru_girdi = false
  input = input.to_i
  if input.zero?
    puts 'Geçersiz girdi. Lütfen yalnızca rakamları kullanarak tekrar deneyiniz.'
    until dogru_girdi == true
      input = gets.chomp
      exit if input == '0'
      input = input.to_i
      if input != 0
        dogru_girdi = true
      else
        puts 'Geçersiz girdi. Lütfen yalnızca rakamları kullanarak tekrar deneyiniz.'
      end
    end
  end
end

def kayit_olustur()
  puts "Ogrenci kayıt sistemi\nLütfen 8 haneli okul numaranızı giriniz"
  numara_girdisi = gets.chomp!
  if checkup_number(numara_girdisi) == false
    puts gecerli bir sayi giriniz
    until  checkup_number(numara_girdisi) == false
      puts 'Lütfen geçerli bir sayı giriniz'
      numara_girdisi = gets.chomp!
    end
  end
end
kayit_olustur()
def checkup_string(input)
  dize = input.chomp.split('')
  dize.each do |letter|
  return false if @turkce_karakterler.include?(letter) == false
  true
  end
end

def checkup_number(input)
  if input == '0'
    0
  else
    input = input.to_i
    if input.zero?
      false
    else 
      true
    end
  end
end

def kayit(number, name, surname)
  kayit = Ogrenci.new number: number, name: name, surname: surname
  ogrenci_listesi << kayit
  puts "Kaydınız başarıyla oluşturulmuştur #{kayit.name}"
end
