=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

examples: 
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

input = positive interger; number
output = string (alternating 1's and 0'; always starting with a 1)

examples/test cases = puts stringy(6) == '101010'
must start with a '1'
counter will be equal to the index
if index is in odd position make it a 1
if index is in even position make it a 2
until the string == number
store in an array

Data structures = array; string = []

Algorithm = 

- initialize an empty array; str = [] inside a loop
- set counter == 0
- start loop inside method
- counter += 1
- number is the length of the string
- looping from 0 to "number"; .length?
- break if counter == number.length - 1

=end




def stringy(number)
  array = ""

  index = 0
  loop do
    if index.even?
      array << "1"
    else
      array << "0"
    end
  index += 1
    break if index == number
  end

  array
end


p stringy(10)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'