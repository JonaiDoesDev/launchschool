# sentence = "jonai is the man"

# def select_vowels(str)
#   selected_chars = ''
#   counter = 0 

#   loop do
#     current_char = str[counter]

#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#   end

#   counter += 1
#   break if counter == str.length
# end

# print selected_chars
# end



# sentence = "jonai is the man"
# number_of_vowels = select_vowels(sentence).size
# number_of_vowels

# # print number_of_vowels





# 4.times do |num|
#   if num == 0
#     var = 'first_iteration'
#     p var
#   else
#     p var
#   end
# end



# # ruby
# def foo
#   x = x.to_s + 'a'
#   p x
# end
# foo


# fruits = ['apple', 'banana', 'pear']


# def transform(array)
#   teh_s = []
#   array.map do |item|
#   mod = item + 's'
#   teh_s << mod
#   # print teh_s
#   end
# end




# print transform(fruits)


# def select_vowels(str)
#   selected_chars = ''
#   counter = 0

#   loop do
#     current_char = str[counter]

#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#     end

#     counter += 1
#     break if counter == str.size
#   end

#   selected_chars
# end

# select_vowels('the quick brown fox')      # => "euioo"

# sentence = 'I wandered lonely as a cloud'
# number_of_volwels = select_vowels(sentence).size                   # => "Iaeeoeaaou"


# p number_of_volwels




# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# # select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# def select_fruit(produce)
#   produce_keys = produce.keys #this returns an array of keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#   break if counter == produce_keys.size

#   current_key = produce_keys[counter] #because produce keys is now an array we can use index to find the element we need based on index position
#   current_value = produce[current_key]

#   if current_value == "Fruit" or current_value == "fruit"
#     selected_fruits[current_key] = current_value
#   end
#   counter += 1
#  end

#  p selected_fruits
# end

# select_fruit(produce)


# my_numbers = [1, 4, 3, 7, 2, 6]

# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#   current_number = numbers[counter]
#   doubled = current_number * 2
#   numbers[counter] = doubled

#   counter += 1
#   end
#   p numbers
# end

# double_numbers(my_numbers)
# p my_numbers

# my_numbers = [1, 4, 3, 7, 2, 6]

# def odd_multiply(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     if current_number.odd?
#       doubled = current_number * 2
#     end
#     doubled_numbers << doubled
#     counter += 1
    
#   end

# p doubled_numbers
# end

# odd_multiply(my_numbers)

# my_numbers = [1, 4, 3, 7, 2, 6]

# def odd_multiply(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if current_number[counter].odd?
#     doubled_numbers << current_number
#     counter += 1
    
#   end

# p doubled_numbers
# end

# odd_multiply(my_numbers)

# p my_numbers


# my_numbers = [1, 4, 3, 7, 2, 6]

# def odd_multiply(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number
#     counter += 1
    
#   end

# p doubled_numbers
# end

# odd_multiply(my_numbers)

# p my_numbers

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do 
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end
  
  p selected_produce
  
end

general_select(produce, "Fruit")