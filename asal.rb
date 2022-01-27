def asalsayi(sayi)
  sayi = sayi.to_i
  b = sayi - 1
  until b == 1
    if sayi % b != 0
      b -= 1
    else
      return false
    end
  end
  true
end

puts asalsayi(15)