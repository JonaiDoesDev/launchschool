
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


# def how_many(array)
#     counted_figures = {}
#     counter = 0

#     loop do 
      
#       break if counter == array.size

#       current_key = array[counter]
#       current_value = array.count[counter]
#       counted_figures[current_key] = current_value
#       counter += 1

#     end

#     p counted_figures

# end

#  how_many(vehicles)

# def how_many(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# how_many(vehicles)

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
  occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end

  
end





count_occurrences(vehicles)