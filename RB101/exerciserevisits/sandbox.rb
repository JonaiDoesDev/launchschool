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

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }


# def general_select(produce_list, selection_criteria)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_produce = {}

#   loop do 
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == selection_criteria
#       selected_produce[current_key] = current_value
#     end

#     counter += 1
#   end
  
#   p selected_produce
  
# end

# general_select(produce, "Fruit")

# my_numbers = [1, 4, 3, 7, 2, 6]

# def multiply(numbers, operation)
#   transformed_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     multiplied_number = current_number * operation
#     transformed_numbers << multiplied_number
#     counter += 1
#   end

#   p transformed_numbers
# end

# multiply(my_numbers, 10)


# question = 'How many times does a particular character appear in this sentence?'

# def select_letter(question, letter)
#   selected_letter = ""
#   counter = 0

#   loop do 
#     break if counter == question.size

#     repeating_letter = question[counter]
#     selected_letter << repeating_letter if repeating_letter == letter
#       # selected_letter << repeating_letter
#     counter += 1
#   end

#   if selected_letter == ''
#     print "No repeating letters"
#   end


# p selected_letter if selected_letter != ''
# end

# p select_letter(question, 'a')



# def select_vowels(string)
#   selected_vowels = []
#   index = 0

#   loop do
#     break if index == string.size
#     current_char = string[index]
#    if 'aeiouAEIOU'.include?(current_char)
#     selected_vowels << current_char
#     end
#   index += 1
#   # break if index == string.size
  
# end
# selected_vowels
# end

#  p select_vowels("jonai is the man")



# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def is_fruit(hash)
#   hash_keys = hash.keys
#   fruit_hash = {}
#   counter = 0

  
#   loop do
#     break if counter == hash.size

#     current_selection = hash_keys[counter]
#     value = hash[current_selection]


#     if value == "Fruit"
#     fruit_hash[current_selection] = value
#     end

# counter += 1
#   end
# p fruit_hash

# end

# is_fruit(produce)



age = rand(0..100)

if age <= 17
  puts "Kid"
elsif age.between?(18, 60)
  puts "adult"
else
  puts "senior"
end

puts age































