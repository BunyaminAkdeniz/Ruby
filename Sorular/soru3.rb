# frozen_string_literal: true

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