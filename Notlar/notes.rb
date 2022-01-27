# frozen_string_literal: true

# SINIFLAR
# .class metodu değişkenin sınıfnı gösterir

1.class # => Integer

'Merhaba'.class # => String

5.5.class # => Float

true.class # => TrueClass !!!bool değil!!!

false.class # => FalseClass

# STRİNG KOMUTLARI

'isim'.upcase # => büyük harfe çevir

'isim'.downcase # => küçük harfe çevir

'Merhaba Dünya'.capitalize # => ilk harfi büyük yazar. gerisini küçük => 'Merhaba dünya'

'Merhaba Dünya'.swapcase # => büyük harfleri küçük, küçükleri büyük yapar => 'mERHABA dÜNYA'

"Merhaba \n dünya" # => \n kullandığın yerde alt paragrafa geçer

'Merhaba \'Bünyamin\'' # => String kaçış karakteri (\). Ruby'nin tırnak işaretini komut olarak algılamamasını sağlar

"\tMerhaba dünya" # => Tab boşluğu oluşturur

'Merhaba' << ' Dünya' # => Merhabanın sonuna Dünya kelimesini ekler

'Merhaba'.concat('dünya') # => Merhabanın sonuna dünya kelimesini ekler

"Merhaba asd asd asd asd".split(' ') => 

# DÖNGÜLER
###################
i = 2

while i < 5 # => true olduğu sürece çalışır
  p 'while döngüsü'
  i += 1 # => i = i + 1
end

until i == 10 # => false olduğu sürece çalışır
  puts 'until dönügüsü'
  i += 1
end

loop do # => loop sonsuz döngüdür. çıkmak için break kullanılır
  i += 1
  break if i == 100 # => i yüze eşitse döngüden çık
end

while i < 200
  i += 1
  case i # => kontrol edeceği değişkeni girdik.
  when 120 # => i değeri 120 olduğunda 120 yazdır
    puts '120'
  when 150
    puts '150' # => 150 olduğunda 150 yazdır
  when 199
    puts '199'
  end
end

# DİZİLER
# DİZİLERE ULAŞMAK
###################

dizi = [1, 2, 3, 4]

dizi[4] # => nil  dizileri saymaya 0 dan başlar

dizi[1, 3] # => 1. indexten başla başla 3 öğe çek

dizi[1..2] # => 1. indexten başla 2 öğe çek

# DİZİ METODLARI
###################

dizi[2] = 10 # => 2. indexteki öğe yerine 10 yaz

dizi[10] = 10 # => 10. indexe kadar boş olan indexlere nil atar => [1, 2, 3, 4, nil, nil, nil, nil, nil, nil, 10]

dizi[11..3] = [11, 12, 13] # => 11. indexten sonra 3 sayıyı ekler

# dizi.length = dizi.size = dizi.count # => dizinin uzunluğunu alır

dizi.length # => en yaygını

dizi.empty? # => boş kontrolü yapar. Boşsa true değilse false döner

dizi.nil? # => nil kontrolü yapar. empty ve nil aynı değeri dönmez!!! [].empty? => true iken [].nil? => false döner.

dizi.first # => ilk öğeyi alır

dizi.last # => son öğeyi alır

dizi.first(3) # => ilk 3 öğeyi alır. Dizi olarak döner!

dizi.push(2, 4, 6) # => diziye 2, 4 ve 6 rakamlarını sondan ekler

dizi << [2, 4, 6] # => push ile aynı

dizi.insert(4, '999') # => dizinin 4. indexine "999" sayısını ekler

dizi.pop # => son rakamı siler

dizi.pop(5) # => sondan 5 öğeyi siler

silinenler = dizi.pop(5) # => silinen 5 öğeyi silinenler adında diziye kaydeder.

dizi.shuffle # => dizi öğelerinin sıralarını rastgele karışıtır

dizi.reverse # => diziyi tersine çevirir

dizi.compact! # => içindeki nil'leri siler

dizi.sort # => diziyi sıralar. String ise alfabetik. Integer ya da Float ise küçükten büyüğe sıralar.

dizi.include?(80) # => dizinin içinde 80 var mı kontrol eder. true/false döner

dizi.uniq # => dizide tekrar eden elemanları siler. [1,1,1,2,3].uniq = [1,2,3]

dizi.find { |index| index > 10 } # => 10'dan büyük ilk sayıyı çevirir

dizi.flatten #=> dizi içinde dizi varsa kaldırır ve tek dizi haline getirir

[['ahmet', 18, 70], ['mehmet', 19, 56], ['ayşe', 18, 42]].flatten # => ["ahmet", 18, 70, "mehmet", 19, 56, "ayşe", 18, 42]

dizi.each do |index|
  # dizi adlı dizide dolaşır
  p index # => o an kaçıncı indexte olduğunu blok içinde kullanabiliriz.
end

dizi.each_with_index do |index, index_pozisyonu|
  p "dizi içinde öğeyi ve öğe pozisyonunu kullanmak için #{index} - #{index_pozisyonu}"
end

besten_kucukler = dizi.select do |numara|
  numara < 5
  p 'beşten küçükleri seçip yeni diziye alır. Dizi adlı dizide eleman eksilmez'
end

dizi.reject! { |numara| numara > 100 } # => 100'den küçükleri diziden çıkartır.

dizi.sample # => örneklem Diziden rastgele 1 karakter verir
# Örnek:  
Array.new(20) { (("A".."z").to_a + (1..9).to_a).sample}.join  
# SPACESHİP OPERATÖRÜ

10 <=> 10 # =>  0 döner
10 <=> 5  # =>  -1 döner
5  <=> 10 # =>  +1 döner
5  <=> 'String' # => nil döner

# Integerlar
10.step(90, 5) #=> 90 a kadar beşer beşer say
puts rand(3..50) # => 3 ile 50 arasında rastgele sayı döner

# Time.now

# invert

h ={
  a: 2,
  b: 4,
}