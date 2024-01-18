numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

def string_to_integer(string)
  numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  holder_array = []
  split_elements = string.chars
  split_elements.each do |element|
    if element == numbers.to_a.any?
      holder_array << element
    end
  end
    puts holder_array.join
end


string_to_integer('1234')
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570