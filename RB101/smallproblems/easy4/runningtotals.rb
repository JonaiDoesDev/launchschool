# def running_total(array)
#   sum = 0
#   array.map do |number|
#     sum += number
#     #sum = sum + number
# end
# end

# puts running_total([2, 5, 13])

#further exploration

# def running_total(array)
#   sum = 0
# (array).each_with_object([]) do |number, new_array|
#   new_array << sum += number
#   end
# end

# p running_total([2, 5, 13])


def running_total(array)
  array.reduce([]) do |new_array, element|
    if new_array.empty? 
      new_array << element
    else
      new_array << new_array.last + element
    end
end
end

p running_total([2, 5, 13])