What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end




.select returns the value of the iterated block if its "truthy"

since 'hi' is the last expression and it is true, select returns the value of the iteration 

NEW TO KNOW:

It will return a new array containing all of the elements in the ORIGINAL array