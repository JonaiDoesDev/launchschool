
def cleanup(string)
  alphabet = ("a".."z").to_a
  characters = string.chars
  non_alpha = []
  characters.each do |char|
    if alphabet.include?(char.downcase)
      non_alpha << char
    else
      non_alpha << ' ' unless non_alpha.last == ' '
    end
  end
  non_alpha.join
end


p cleanup("Wha[t&'s u_p.      Doc?")


=begin
on line 2-14 we define a method with a parameter of string. 
on line 3 we initialize the local variable alphabet and assign it to an array of lowercase letters from a to z
on line 4 we initialize the local variable caharacter and assign it to the return value of the paramater string which we called
the method chars on to return an array of all the characters in string separated.
on line 5 we initialize the non_alpha local variable and set it to an empty array

on line 6 we iterate over the characters array 
on line 7 we use a conditional to check if the character(char) we are currently iterating thorugh
is present (included) in the alphabet array. If it is then we add it to our non_alpha array
if not we add a space ' ' instead UNLESS the last added character to the array was a space, this is to prevent adding additional spaces when we only need 1
on line 13 we call the join method on the non_alpha array to return the array as a string

=end




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
  find a way to not add multiple spaces
6. join the chracters back to a string

=end
