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
In line 1, we are defining a method named swap_first_last_chatacters that takes a parameter. The 
method is delimted by do..end. Inside the method on line 2, we are returning the substring of self specified 
  by the argument, in this case the letter at index 0 whih is




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

