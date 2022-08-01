# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:


a = [1, 4, 8, 11, 15, 19]

this_value = a.bsearch {|x| x > 8}

puts this_value

