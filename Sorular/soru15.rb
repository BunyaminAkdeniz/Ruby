def asalsayi(sayi)
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
p asalsayi(3)
i = 12
kosulu_saglayan_sayilar = []
until i.zero? | i == 1
   p i
  case i 
  when i.to_s.length == 1
    if asalsayi(i) == true
     kosulu_saglayan_sayilar << i 
     i -= 1 
    else
      i -= 1 
    end
  when i.to_s.length == 2
    i -= 1 
    if asalsayi(i) == true
      a = i.to_s.split('')
      a.pop
      b = a.join  
      kosulu_saglayan_sayilar << b
      if asalsayi(b) == true
        kosulu_saglayan_sayilar << b
        i -= 1 
      else 
        i -= 1
      end 
    else
    end
  end
end
    
  
    
  