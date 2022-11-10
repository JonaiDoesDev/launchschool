
=begin
PEDAC

the problem: 
Write a method that counts the number of occurrences of each element in a given array.

input: an Array
output: hash counting the number an item in the array happens. ex; "car" => 4, "truck" => 2, etc 
        array element would be a key, the number of times it happens would be the value


=end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def how_many(array)
    doubles = {}

    array.uniq.each do |item|
    doubles[item] = array.count(item)
    end

    doubles.each do |item, count|
        puts "#{item} => #{count}"
    end
    

end






p how_many(vehicles)