def string_to_integer(string)
numbers = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

digits = []
string.chars.map do |char|
  digits << numbers[char]
end
digits.join
end



puts string_to_integer('570')