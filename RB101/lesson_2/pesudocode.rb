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
IF iteration is at index 0 select that integer, then at index 2, then 4 and so on until reaching the end of the array

PRINT new_array

END
=end


#----------------------------------------------------------#

# # a method that determines the index of the 3rd occurrence of a given character in a string. 
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should 
# return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

=begin
#casual pseudo-code
  - define a method that takes 2 parameters a string which will be the string to iterate over and another sting which is the string we are looking for
  - iterate through the string
  - if the letter you are looking for is the third occurance of that specific letter, select the index
  - if no letter appeared three times, return nill

#formal pseudo-code

START
GET string1 to iterate over
GET string2 to find in first string

WHILE iterator <= length of the string1
  IF the count of string2 is == 3
  READ the their index
  BREAK
=end
