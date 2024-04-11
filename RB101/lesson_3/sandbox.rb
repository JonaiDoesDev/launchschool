# def swap(string)
#   individual_word = string.split
#   individual_word.each do |word|
#     word.
# end

def swap_first_last_character(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_character(word)
end

p result.join(' ')
end

swap("Jonai is awesome")


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
4. move first letter to the end (-1), remember you can access a letter in a string like so word[0]
5. move last letter to the front (0)
=end

