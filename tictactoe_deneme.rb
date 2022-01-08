# frozen_string_literal: true
puts "\n\n"
sayac = 0
skor_x = 0
skor_y = 0
tablo = {
  1 => '   ',
  2 => '   ',
  3 => '   ',
  4 => '   ',
  5 => '   ',
  6 => '   ',
  7 => '   ',
  8 => '   ',
  9 => '   '
}
tablo = index
puts index
def degistir(hash, index, sira)
  hash[index] = if (sira % 2).even?
                  ' x '
                else
                  ' 0 '
                end
end

def kontrol(hash, asd, bsd, csd)
  if hash[asd] == '   '
    false
  elsif hash[asd] == hash[bsd] && (hash[bsd] == hash[csd])
    hash[asd]
  end
end
kazanma_durumlari = [[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7], [4, 5, 6], [1, 2, 3], [7, 8, 9]]

until sayac == 10
  kazanma_durumlari.each do |array|
    case kontrol(tablo, array[0], array[1], array[2])
    when ' x '
      puts 'X kazandı'
      sayac = 15
    when ' 0 '
      puts '0 Kazandı'
      sayac = 15
    end
  end
  puts "#{tablo.values[0]}|#{tablo.values[1]}|#{tablo.values[2]}           1 | 2 | 3"
  puts '---|---|---          ---|---|---'
  puts "#{tablo.values[3]}|#{tablo.values[4]}|#{tablo.values[5]}   ==>     4 | 5 | 6"
  puts '---|---|---          ---|---|---'
  puts "#{tablo.values[6]}|#{tablo.values[7]}|#{tablo.values[8]}           7 | 8 | 9"
  puts "\n\n"
  if sayac < 9
    if (sayac % 2).even?
      puts "Sıra X'de"
    else
      puts "Sıra 0'da"
    end
    konum = gets.chomp.to_i
    if tablo[konum] == '   '
      degistir(tablo, konum, sayac)
      sayac += 1
    else
      puts 'Bu noktaya konulamaz!'
    end
  elsif sayac == 9
    puts 'Berabere'
    break
  else
    break
  end
end
