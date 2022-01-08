puts 'En büyük iki rakamını görmek istediğiniz soruyu giriniz'
sayi = gets.chomp.to_i
dizi = sayi.to_s.chars.map(&:to_i).uniq.compact.sort
puts "#{dizi[-1]} ve #{dizi[-2]}"