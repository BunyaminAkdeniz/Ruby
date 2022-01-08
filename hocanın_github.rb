# frozen_string_literal: true

Student = Struct.new :no, :surname, :name, keyword_init: true

def dp_load(file)
  File.readlines(file).each do |line|
    puts line 
  end
end
dp_load('file_read.txt')



exit
Struct.new # => Veri depolama için oluştur...

# Fİle okuyucu
def db_load(file)
  db = {}

  File.readlines(file).each do |line|
    line.chomp!
    fields = line.split
    no      = fields.pop
    surname = fields.pop
    name    = fields.join(' ')

    db[no] = Student.new no: no, surname: surname, name: name
  end

  db
end

def db_dump(db)
  db.each do |no, student|
    puts "#{no}\t#{student[:name]}"
  end
end

def main
  db_dump db_load('liste.txt')
end

main

exit

class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(other)
    Math.sqrt((other.x - x)**2 + (other.y - y)**2)
  end
end

p = Point.new 3, 5
q = Point.new 6, 9

p p.distance(q)

exit

Person = Struct.new :name, :surname do
  def hesapla
    puts 'Bekleyin, hesaplıyorum...'
    "#{name.capitalize} #{surname.capitalize}"
  end

  def fullname
    @fullname ||= hesapla
  end
end

person = Person.new 'ahmet', 'fuat'
person.fullname #=> "Ahmet Fuat"
person.fullname #=> "Ahmet Fuat"
person.fullname #=> "Ahmet Fuat"

p person.fullname

exit

def db_load(file)
  db = {}

  File.readlines(file).each do |line|
    line.chomp!
    fields = line.split

    no      = fields.pop
    surname = fields.pop
    name    = fields.join(' ')

    db[no] = {
      no: no,
      surname: surname,
      name: name
    }
  end

  db
end

def db_dump(db)
  db.each do |no, student|
    puts "#{no}\t#{student[:name]}"
  end
end

def main
  db_dump db_load('liste.txt')
end

main

exit

def db_load(file)
  db = {}

  File.readlines(file).each do |line|
    student = {}

    line.chomp!
    fields = line.split

    student[:no]      = fields.pop
    student[:surname] = fields.pop
    student[:name]    = fields.join(' ')

    db[student[:no]] = student
  end

  db
end

def db_dump(db)
  db.each do |no, student|
    puts "#{no}\t#{student[:name]}"
  end
end

def main
  db_dump db_load('liste.txt')
end

main

exit

DEFAULTS = {
  paper:     :A4,
  layout:    :portrait,
  numbering: true,
  cover:     true
}.freeze

def printout(file, **options)
  options = DEFAULTS.merge(options)
  puts "Yazdırıyorum: #{file}..."
  p options
end

printout 'foo.pdf', layout: :landscape

exit

def printout(file, hash = {})
  options = DEFAULTS.merge(hash)
  puts "Yazdırıyorum: #{file}..."
  p options
end

printout 'foo.pdf', layout: :landscape