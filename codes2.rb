# frozen_string_literal: true

# Hashlar
ogrenci = {
  isim: 'Bünyamin',
  yaŞ: 18,
  bölüm: 'Bilgisayar Müh.',
  sınıf: 'Üniversite1'
}

p ogrenci[:isim]
p ogrenci.fetch(:sehir, 'Böyle bir parametre bulunamadı')
ogrenci.store(:favoriders, 'Programlama')
p ogrenci
yemek_fiyatlari = Hash.new('Bulunmayan değerler için varsayılan')
yemek_fiyatlari[:pide] = '8,5'
yemek_fiyatlari[:ekmek] = '4'
puts
puts yemek_fiyatlari
yemek_fiyatlari.to_a
yemek_fiyatlari.to_h
puts yemek_fiyatlari.sort # => !!! DİZİ DÖNER!!!
p(yemek_fiyatlari.sort_by { |_yemek, yemek_fiyati| yemek_fiyati }) # => !!! DİZİ DÖNER!!!
yemek_fiyatlari.delete(:pide)
puts yemek_fiyatlari.merge(ogrenci)

# blcok yeild ve block_given?

def ekrana_yazdir
  puts ''
  puts 'Metodum işeleme başladı '
  yield
  puts 'Metodum işlemini bitirdi'
end

ekrana_yazdir do
  puts 'Metodum işlemine devam ediyor'
end

def ekrana_yazdir_block_given_ile
  puts
  puts 'Metodum işleme başladı'
  yield if block_given?
  puts 'Metodum işlemini bitirdi'
end

ekrana_yazdir_block_given_ile
puts
puts

# PROC

karesi = proc { |sayi| sayi * sayi }
sayilarim = [1, 2, 3, 4, 5, 6, 7, 8, 99]
p sayilarim.map!(&karesi)
p sayilarim.map(&:to_s)
# KULLANIM ÖRNEĞİ
türk_lirasi_to_dolar = proc { |sayi| sayi.to_f / 14.5 }

puts sayilarim.map(&türk_lirasi_to_dolar)

# PROCLARI METODLARDA KULLANMA
iyi_ozellikler = proc { |film| puts "#{film} adlı filmin senaryosu çok iyidir." }
kotu_ozellikler = proc { |film| puts "#{film} adlı film 98 çekim olduğundan günümüz için eskidir." }

def film_ve_ozellikleri(film_ismi, &ozellikleri)
  puts "Filmimizin adı #{film_ismi}"
  ozellikleri.call(film_ismi)
end
puts film_ve_ozellikleri('Star Wars', &iyi_ozellikler)
puts film_ve_ozellikleri('Star Wars', &kotu_ozellikler)

Proc.new # => Eksik girilirse hata dönmez.
lambda # => Eksik girilirse hata döner.
# TİME METODLARI
su_an = Time.new
p su_an.strftime('%Y-%m-%d')
require 'time'
p Time.strptime('2021*/*15*/*3', '%Y*/*%d*/*%m')
# tarih (Yıl, Ay, Gün)
# %Y 4 haneli yıl sayısı 2020
# %y 2 haneli yıl sayısı 2020 ise 20
# %m Ay sayısı eğer tek haneli ise başına 0 koyulacak şekilde örneğin temmuz için 07
# %-m Ay sayısı eğer tek haneli ise başına 0 koyulmayacak şekilde örneğin temmuz için 7
# %B Ay ismi ingilizce olarak temmuz ise July
# %b Ay isminin kısaltılmış hali temmuz ise Jul
# %d Gün sayısı eğer tek haneli ise başına 0 koyulacak şekilde örneğin 05
# %-d Gün sayısı eğer tek haneli ise başına 0 koyulmayacak şekilde örneğin 5
# Zaman (Saat, Dakika, Saniye)
# %H Saat bilgisi sayı değeri olarak başına 0 gelecektir. 08 gibi
# %M Dakika bilgisi 59
# %S Saniye bilgisi 30
# %L Milisaniye bilgisi 999
# Hafta (Günler)
# %A Haftanın günü ingilizce olarak örneğin pazar günü ise Sunday
# %a Haftanın günü kısaltılmış olarak pazar ise Sun
# %u Haftanın kaçıncı günü olduğu sayı değeri olarak ve pazartesini haftanın başı baz alacak şekilde örneğin Salı günü 2

File.open('arabalar.txt', 'a') do |satir|
  satir.puts 'BMW'
end
require "./codes"
require_relative "codes"

# 