sayi = 9
correct = true
while correct 
  tahmin = rand(1..9)
  puts tahmin
  if tahmin == sayi
    puts "doğru cevap #{tahmin}"
    correct = false
  end
end  