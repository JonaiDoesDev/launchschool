def remove_vowels(arr)
  vowels = "a e i o u"
  array_with_no_vowels = []

  arr.each do |word|
  array_with_no_vowels << word.chars.each do |letter|
      letter.delete!(vowels)
    end
  end
  p array_with_no_vowels
end


remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))






=begin
  
Probelm:
Input: an array of strings
Output: an array of the same strings but the vowels removed from those string values

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data Structures:
arrays

Algo:

Requirement
Approach
Procedure

- REMOVE all vowels from a string inside of an array
  - Iterate through each string in an array
    -array.each
  - Iterate through each character in the string
    - chars = string.chars.each
  - Remove any vowels from the string
    - compare the characters to an array holding the vowels
    - vowels = %w(a e i o u)
    - chars.delete_if(vowels?)
  - join the characters back together ; not sure about this step
- RETURN an array of strings with the vowels removed
  - return the array with the strings inside it mutated; maybe use delete_if

=end