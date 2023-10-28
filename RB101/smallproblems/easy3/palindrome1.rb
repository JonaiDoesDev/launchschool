# def palindrome?(string)
#   backwards = string.reverse
#   string == backwards
# end

def real_palindrome?(string)
  arr = ('a'..'z').to_a + ('0'..'9').to_a
  joined = arr.join
  string.include?(joined) 
end

real_palindrome?("jonai5")