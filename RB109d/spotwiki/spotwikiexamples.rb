question 1

a = “Hello”
b = a
a = “Goodbye”

puts a
puts b

the local variable a will point to the string object Hello 
the local variable b will point to the string object “Goodbye”

Local variable a was initialized pointing to the string value “Hello”
local variable b was then initialized to point to the same object that variable a was pointing to which is string object hello
local variable a then was pointed to a different object which wa string goodbye.

variable b stayed pointing to the original string object hello

This concept demonstrates that variables do not hold a value itself but rather that they point to referencs in memory. Variable as pointers

question 2

a = 4

loop do  
  a = 5  
  b = 3

  break
end

puts a
puts b

the following code will output a = 5 and b will throw an undefined local variable error.

this is demonstrating the scoping rules, specifically when it pertains to local variables and method invocation blocks
This shows that blocks are able to "see" local variables initialized outside of the do end scope and this also shows that variables initialized within the do end scope cannot be accessed outside out if.