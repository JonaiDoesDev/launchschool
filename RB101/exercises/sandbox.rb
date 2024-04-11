
=begin
START
SET greatest_number
GET
PRINT
READ greatest_number
IF this is true
ELSE IF this is false
ELSE do this
WHILE
END
=end


# a method that returns the sum of two integers

=begin
#casual psuedo-code
- define a method that takes in 2 parameters
- in the method, take the first number/integer and add it to the second number/integer
- the last evaluated expression in Ruby is ALWAYS returned

#formal psuedo-code
START
DEF add(integer1, integer2)
  integer1 + integer2
END
=end

#--------------------------------#

#a method that takes an array of strings, and 
#returns a string that is all those strings concatenated together

=begin
#casual psuedo-code
- define a method that takes one parameter: array
- call every string and put them in a new empty array without any spaces
- the last evaluated expression in Ruby is ALWAYS returned

#formal psuedo-code
START
DEF concat(array of strings)

SET new_array = empty array
WHILE iterator == length of array
add current string to new_array
RETURN the string together; joined
=end

#--------------------------------------#

# a method that takes an array of integers, and returns a 
# new array with every other element from the original array,
# starting with the first element. For instance:

# every_other([1,4,7,2,5]) # => [1,7,5]

=begin
#casual psuedo-code
- define a method that takes one parameter: array of integers
- iterate through the array of integers and select every other integer starting with the first one
- returns a new array with those elements

#formal psuedo-code
START

DEF a method that takes one paramater: array

WHILE iterator == length of array
SET new_array to the return value of the iteration
IF iteration is at index 0 then at index 2, then 4 and so on until reaching the end of the array
  add those elemetns to the new array

PRINT new_array

=end



a = [1,4,7,2,5]
counter = 0
new_array = []
  a.each do |n|
  new_array << n if counter.even?
  counter += 2
end

p new_array