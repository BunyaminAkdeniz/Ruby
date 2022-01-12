


exit
salise = 0 
saniye = 0
dakika = 0 
saat = 0
loop do 
  salise += 1
  puts "#{saat}/#{dakika}/#{saniye}/#{salise}" 
    salise = 0
    saniye += 1
    if saniye == 60
      dakika += 1
      saniye = 0 
      salise = 0
    if dakika == 60
        saat += 1
        dakika = 0
        saniye = 0 
        salise = 0
    end
  end
end

exit
puts 57**2 + 308**2 == 317**2
exit
degisken ="merhaba"
degisken[1] = "c"
puts degisken

exit


gmail_chech_up = /[\w._%+-]+@[\w.-]+\.[a-zA-Z]{2,4}/
gmails = %W[bunakdeniz16@gmail.com 123@qwe.com zxc@gasd -a@stu.omu]
# gmails.each do|mail|
#   p mail.match? gmail_chech_up 
# end
puts 50.to_s(2)
puts "a" == "A"