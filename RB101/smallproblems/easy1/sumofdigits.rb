def sum(number)
  seperate_strings = number.to_s.chars.map(&:to_i).reduce(:+)

end

puts sum(55)