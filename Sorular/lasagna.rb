# frozen_string_literal: true

require 'csv'

module Asciify
  def self.asciify(string)
    string.gsub(
      /[ığüşöçİĞÜŞÖÇ]/,
      'ı' => 'i',
      'ğ' => 'g',
      'ü' => 'u',
      'ş' => 's',
      'ö' => 'o',
      'ç' => 'c',
      'İ' => 'I',
      'Ğ' => 'G',
      'Ü' => 'U',
      'Ş' => 'S',
      'Ö' => 'O',
      'Ç' => 'C'
    )
  end
end

module Roster
  def self.call(file)
    data = File.read(file) # string

    out = CSV.new(data, headers: true).map(&:to_h) # array of hashes

    out.map do |hash|
      ad = hash['Ad']
      soyad = hash['Soyad']
      no = hash['Öğrenci No']

      adlar = ad.split(' ').join('-')
      soyadlar = soyad.split(' ').join('-')

      tamad = Asciify.asciify("#{adlar}-#{soyadlar}").upcase.gsub(/[.,]/, '')

      tanimlayici = "#{tamad}-#{no}"
    end.join("\n")
  end
end

def main
  # İYİ
  infile, outfile = ARGV
  File.write(outfile, Roster.call(infile))

  # ÇİRKİN
  # infile, outfile = ARGV
  # File.write('çıktı', Roster.call('girdi'))

  # KÖTÜ ASLA MUTLAK DOSYA YOLU KOYMAYIN KAYNAK KODA
  # File.write('C:\Users\Merve Büşra Yılmaz\Çıktı', Roster.call('C:\Users\Merve Büşra Yılmaz\Programlama Dosyalarım\Liste.csv'))
end

