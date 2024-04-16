
def crunch(str)
  non_duplicate_letter_array = []

  str.chars.each do |letter|
    if non_duplicate_letter_array[-1] == letter
      next
    else
      non_duplicate_letter_array << letter
    end
  end
  non_duplicate_letter_array.join
end

crunch('ddaaiillyy ddoouubbllee') 
crunch('4444abcabccba')
crunch('ggggggggggggggg')
crunch('a')
crunch('')






=begin
Problem: 
INPUT: string
OUTPUT: NEW STRING

Remove any duplicate letters

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data Structures:
String -> Array -> String

Algo:
 - seperate string into different characters.
 - Create and empty array
 - if a specific character is the same as the character next to it to the right, dont add to array. if its not, add to add array
 - join array to form string


=end