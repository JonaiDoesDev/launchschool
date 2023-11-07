def palindrome?(string)
  deleted_characters = [",", "'", " "]
  string = string.downcase.delete(deleted_characters.join(","))
  string
  backwards = string.reverse
  string == backwards
end

word = "Racecar"
another = "Madam, I'm Adam"

puts palindrome?(word)
puts palindrome?(another)


