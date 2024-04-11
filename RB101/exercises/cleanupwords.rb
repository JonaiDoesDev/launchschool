# alphabet = Array("a".."z")

def cleanup(string)
  alphabet = Array("a".."z")
  characters = string.chars
  non_alpha = []
  characters.each do |char|
    non_alpha << char
    if char != alphabet
      char.replace(' ')
    end
    non_alpha.join
  end
end


p cleanup("---what's my +*& line?")








=begin
problem: given a lowercase string that consist of letters and alpha numeric
characters, return a string that replaces the alpha numeric characters 
for white spaces.
if there are 2 or more alpha numeric characters it should only be replaced by 1 space

examples:
cleanup("---what's my +*& line?") == ' what s my line '

data structure:
array

algo:
1. create an array of the alphabet that we can check our string against
2. define a method that takes in a string parameter
3. split the string into individual characters
4. compare those characters vs the created alpahbet array
5. if a character is NOT in the alphabet array, replace with a " "
6. join the chracters back to a string

=end
