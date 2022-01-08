DEFAULTS = {
  paper: :A4,
  layout: :portrait,
  numbering: true,
  cover: true
}.freeze

def printout (file, hash)
  options = DEFAULTS.merge(hash)
  puts "Yazdırıyorum #{file}"
  p options
end

printout('foo.pdf', layout: :landscape)

def print_out (file, **options)
  options = DEFAULTS.merge(options)
  puts "Yazdırıyorum #{file}"
  p options
end

printout('foo.pdf', layout: :landscape)