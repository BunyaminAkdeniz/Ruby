def sezarin_sifresi(input)
  newvalue = ''
  letters = ("a".."z").to_a + ["a".."e"] 
  letters_upcase = ("A".."Z").to_a + ["A".."E"]
  input.split('').each_with_index do |letter, index|
    letter = if letters.find_index(letter).nil?
      letter = letters_upcase[(letters_upcase.index("A") + 3)]
    else
      letter = letters[(letters.find_index(letter)) + 3]
    end
    newvalue[index] = letter
  end
  newvalue
end
print sezarin_sifresi("merhaba")