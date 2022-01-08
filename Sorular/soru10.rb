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
