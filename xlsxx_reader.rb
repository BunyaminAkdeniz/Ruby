require 'rubyXL'
workbook = RubyXL::Parser.parse('C:\Ruby\Kitap.xlsx')
worksheet = workbook[0]
cell = worksheet[2][0]
worksheet.add_cell(0, 0, 'A1')
puts worksheet[1]
puts cell
