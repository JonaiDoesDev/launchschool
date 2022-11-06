vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]



# def test_count(vehicle)
#     totals = {}
#     index = 0
#     if vehicle[index] == vehicle[index + 1]
#     print totals.store(index, 3)
#     index =+ 1

#     else
#         print "false"
# end
# end

# print test_count(vehicles)


def count_occurrences(array)
    occurrences = {}

    array.uniq.each do |element|
        occurrences[element] = array.count(element)
    end

    occurrences.each do |element, count|
        puts "#{element} => #{count}"
    end    
end

count_occurrences(vehicles
)