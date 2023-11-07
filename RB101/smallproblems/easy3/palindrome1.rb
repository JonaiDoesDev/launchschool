def palindrome?(string)
  backwards = string.reverse
  string == backwards
end

palindrome?("racecar")