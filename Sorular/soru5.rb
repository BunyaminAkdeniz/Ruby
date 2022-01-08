puts 'Soru5 '
puts 'Lütfen en az 3 haneli bir sayı giriniz'
sayi = gets.chomp.to_i
numara = sayi.to_s
numara_array = numara.split('')
numara_array.map! {|num| num.to_i}
carpımlar = []
index = 0
numara_array.map do 
  if numara_array[index + 2] != nil && numara_array[index + 1] != nil && numara_array[index] != nil
    carpımlar << numara_array[index] * numara_array[index + 1] * numara_array[index + 2]
    index += 1
  end
end
puts carpımlar.max