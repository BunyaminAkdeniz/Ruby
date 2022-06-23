# frozen_string_literal: true
# Ruby xlsx işlemleri 
require 'rubyXL'
require 'rubyXL/convenience_methods/cell'
require 'rubyXL/convenience_methods/color'
require 'rubyXL/convenience_methods/font'
require 'rubyXL/convenience_methods/workbook'
require 'rubyXL/convenience_methods/worksheet'
require 'matrix'

def reader(a, minor) 
  i = 0 
  until i == minor.size
    p minor[i][a -1]
    i += 1
  end
end
workbook = RubyXL::Parser.parse('C:\Ruby\Kitap_2.xlsx')
worksheet = workbook[0]
minor = []
i = 0
ii = 0
until worksheet[i].nil?
  if worksheet[0].nil?
    puts 'Boş girdi'
    break
  elsif worksheet[1].nil?
    minor << [worksheet[i][0].value].compact! unless worksheet[i][ii].nil?
    i += 1
  elsif worksheet[2].nil?
    minor << [worksheet[i][0].value, worksheet[i][1].value].compact! unless worksheet[i][ii].nil?
    i += 1
  elsif worksheet[3].nil?
    minor << [worksheet[i][0].value, worksheet[i][1].value, worksheet[i][2]].compact! unless worksheet[i][ii].nil?
    i += 1
  else
    unless worksheet[i][ii].nil?
      minor << [worksheet[i][0].value, worksheet[i][1].value, worksheet[i][2],
                worksheet[i][3]].compact!
    end
    i += 1
  end
end

a = gets.chomp.to_i
case a
when 0
  minor.each do |dizi|
    puts "#{dizi[0]}   #{dizi[1]}"
  end
when 1
  reader a, minor
when 2

when 3
  puts "Birinci stun elemanları toplamı: "
end

