
=begin
PEDAC

the problem: 
Write a method that counts the number of occurrences of each element in a given array.

input: an Array
output: hash counting the number an item in the array happens. ex; "car" => 4, "truck" => 2, etc 
        array element would be a key, the number of times it happens would be the value
Examples: 
car => 4
truck => 3
SUV => 1
motorcycle => 2

Algorithm:
1. loop through the array with the index
2. save that element in a hash



=end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def how_many(array)
    counted_figures = []
    counter = 0

    loop do 
      
      break if counter == array.size

      current_element = array[counter]
      counted_figures << current_element
      counter += 1

    end

    p unique_elements = counted_figures.count

end

 how_many(vehicles)