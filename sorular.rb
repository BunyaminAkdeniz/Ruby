# SORU 1
p "1'den girdiğiniz sayıya kadar kalansız bölünen sayıyı görmek için bir sayı giriniz"
sayi = gets.chomp.to_i
sayi_to_one = []
until sayi.zero?
  sayi_to_one << sayi
  sayi -= 1
end
p sayi_to_one.reduce(1) { |acc, n| acc.lcm(n) }

exit
# SORU 2
puts "1'den itibaren girdiğiniz sayıya kadar rakamları ardışık olarak artan sayıları görmek için bir sayı giriniz"
sayi = gets.chomp.to_i
yeni = []

until sayi == 1
  gecici = sayi.to_s.split('')
  case gecici.length
  when 2
    yeni << sayi if gecici[0].to_i + 1 == gecici[1].to_i
  when 3
    yeni << sayi if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i
  when 4
    if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i && gecici[2].to_i + 1 == gecici[3].to_i
      yeni << sayi
    end
  when 5
    if gecici[0].to_i + 1 == gecici[1].to_i && gecici[1].to_i + 1 == gecici[2].to_i && gecici[2].to_i + 1 == gecici[3].to_i && gecici[3].to_i + 1 == gecici[4].to_i
      yeni << sayi
    end
  end
  sayi -= 1
end
puts yeni

exit

# SORU 3

a = 999
b = 999
tum_carpım = []

until b == 900
  until a == 900
    c = a * b
    tum_carpım << c.to_s
    a -= 1
  end
  b -= 1
  a = 999
end
p "3 basamaklı en büyük palindrome sayı #{tum_carpım.find {|index| index== index.reverse}}'dır"
exit

# SORU 5

puts 'En büyük iki rakamını görmek istediğiniz soruyu giriniz'
sayi = gets.chomp.to_i
dizi = sayi.to_s.chars.map(&:to_i).uniq.compact.sort
puts "#{dizi[-1]} ve #{dizi[-2]}"
exit

# SORU 8
puts 'Sayı giriniz'
sayi = gets.chomp.to_i
dizi = []
until sayi == 1
  if sayi.even?
    sayi /= 2
  elsif sayi.odd?
    sayi = sayi * 3 + 1
  end
  dizi << sayi
end
print dizi
exit

# SORU 9 

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
exit

# SORU 10

# frozen_string_literal: true

def asalsayi(sayi)
  b = sayi - 1
  until b == 1
    if sayi % b != 0
      b -= 1
    else
      return
    end
  end
  sayi
end

sayi = 100
a = []
b = []
c = []
until sayi == 1000
  a << sayi
  sayi += 1
end

a.each { |index| b << asalsayi(index) }
b.compact!
b.each do |index|
  c << index.to_s
end
bos_dizi = []
c.each do |index|
  a = index[0]
  b = index[1]
  d = index[2]
  bos_dizi << a + b + d
  bos_dizi << b + a + d
  bos_dizi << a + d + b
  bos_dizi << b + d + a
  bos_dizi << d + a + b
  bos_dizi << d + b + a
end
f = bos_dizi & c
z = []
f.each do |index|
  k = index[0]
  l = index[1]
  m = index[2]
  z << index if f.include? (k + m + l) && (l + k + m) && (l + m + k) && (m + k + l) && (m + l + k)
end
z.uniq!
p z.sort
exit
