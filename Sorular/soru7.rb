a = 100
dizi = []
until a == 0
  n = a
  elde = 0 
  until n == 0
    elde += n 
    n -= 1
  end
  dizi << elde
  a -= 1
end
p dizi