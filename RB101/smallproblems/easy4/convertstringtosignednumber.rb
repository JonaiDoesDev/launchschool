def string_to_signed_integer(string)
  numbers = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
  
  digits = []
  string.chars.map do |char|
    if char == '-'
      digits << char
    else
    digits << numbers[char]
    end
  end
  digits.join
  end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')