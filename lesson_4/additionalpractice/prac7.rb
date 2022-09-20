# statement = "The Flintstones Rock"
# counting_hash = {}

# seperate_strings = statement.chars
# seperate_strings.each do |element| 
#   puts element.count("t") 

# end

statement = "The Flintstones Rock"
counting_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  counting_hash[letter] = letter_frequency if letter_frequency > 0
end



# PEDAC

# P - understand the problem / Input; Output
# Keep track in a hash of how many times a letter occurs.
# Input = String
# Output = a hash; keys are the letters, values are the amount of times a letter occurs
# scoreboard basically


# E - Examples/Rules
#  "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ...
# has to be in hash form


# D - Data Structures
# Starts with a string, possibly moves to an array, at least part of it, and then outputs as a hash


# A - Algorithm
# 1. start with a string
# 2. seperate string into different characters and store in an array where each character is its own element
# 3. add each element to a hash as its own key,
# 4. count each element and add them together and place it as the value


# BONUS - SANDBOX - Where you go into IRB to test out some ideas, possible solutions for different steps.
# - How can I get strings, seperate characters, add them to an array???


# C - CODE with INTENT!













