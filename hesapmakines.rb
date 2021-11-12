# frozen_string_literal: true

devam = true
soruIndexi = 0
toplam = nil
gecici = nil
  while true
    if soruIndexi.zero?
      puts 'sayi gir'
      sayi1 = gets.chomp.to_i
    end
    puts 'islem gir'
    islem = gets.chomp
    break if islem == 'q'
    if islem == '='
        devam = false
        puts gecici
        break
    end
    puts 'ikinci sayi'
    sayi2 = gets.chomp.to_i
    case islem
    when '+'
      if gecici == nil
        puts sayi1 + sayi2
        soruIndexi += 1
        islem = nil
        gecici = sayi1 + sayi2
      else
        puts gecici + sayi2
        gecici = gecici +sayi2
        soruIndexi += 1
        islem = nil
      end
    when '-'
      if gecici == nil
        puts sayi1 - sayi2
        soruIndexi += 1
        islem = nil
        gecici = sayi1 - sayi2
      else
        puts gecici - sayi2
        gecici = gecici - sayi2
        soruIndexi += 1
        islem = nil
      end
    when '*'
        if gecici == nil
          puts sayi1 * sayi2
          soruIndexi += 1
          islem = nil
          gecici = sayi1 * sayi2
        else
          puts gecici * sayi2
          gecici = gecici * sayi2
          soruIndexi += 1
          islem = nil
        end
    when '/'
        if gecici == nil
          puts sayi1 / sayi2
          soruIndexi += 1
          islem = nil
          gecici = sayi1 / sayi2
        else
          puts gecici / sayi2
          gecici = gecici / sayi2
          soruIndexi += 1
          islem = nil
        end      
    end
end