def palindrome?(string)
  backwards = string.reverse
  string == backwards
end

def palindrome2?(string)
  deleted_characters = [",", "'", " "]
  string = string.downcase.delete(deleted_characters.join(","))
  palindrome?(string)
end


word = "Racecar"
another = "Madam, I'm Adam"

puts palindrome2?(word)
puts palindrome2?(another)


