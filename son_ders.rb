db_load = {}

File.readlines('list.txt').each do |line|
  student = {
    name: nil,
    surname: nil,
    no: nil,
  }
  line.chomp!
  field = line.split
  student[:no] = field.pop
  student[:surname] = field.pop
  student[:name] = field.join(' ')
  db_load[student[:no]] = student
end

pp db_load