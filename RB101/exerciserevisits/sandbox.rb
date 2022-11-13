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

