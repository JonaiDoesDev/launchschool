def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

=begin
In line 1, we are defining a method named swap_first_last_chatacters that
takes a parameter word. The method is delimted by do..end. Inside the method 
on line 2, we are accessing the character at string character with index of 0
and string character with index of -1 which is always the last character in a string.
We are then telling Ruby to exchange and assign those values with the string character at the 
end of the string and the string character at the beginning of the string. This will swap 
our first and last letters for each other. On line 3 we return the word and since 
what we did on line 2 is destructive, it returns the word how we need it.

On line 6 we define another method with the name swap and it also takes a parameter words
on line 7 we initialize a variable with the name result. we also use our words parameter
and call the split method on it which returns an array of each word we then call map
to iterate over each word and return a new array. we set the block parameter as word
On line 8 we call our swap_first_last_characters method with the argument word. This 
creates a new array where all the words in that array have their first and last letter swapped.
We assign this array to the results variable.

On line 10 we call the join method with an argument of ' ' on result to join all the
array words together and adding a space between each word. 

=end



=begin

Understanding the problem:
Input: A string of words seperated by spaces
Output: A string where first and last letter of the string are swapped. Meaning the
first letter becomes the last letter and the last letter becomes the first letter.

Examples:
('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
('Abcde') == 'ebcdA'
('a') == 'a'

Data Structure:
I am using an array since I could utilize the order that the array works with and possibly first 
in and first out queues

Algorithm:
1.  break down string into seperate words and store in an array
2. iterate through the array so that you have access to each word individually
3. iterate through the word itself to have access to the letters. #chars
4. move first letter to the end (-1)
5. move last letter to the front (0)
  reverse the word, then only reverse again the mittle of it.
  Look for a built in method that might handle this, ie gsub? 

=end

