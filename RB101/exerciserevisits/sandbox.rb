sentence = "jonai is the man"

def select_vowels(str)
  selected_chars = ''
  counter = 0 

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
  end

  counter += 1
  break if counter == str.length
end

print selected_chars
end



sentence = "jonai is the man"
number_of_vowels = select_vowels(sentence).size
number_of_vowels

# print number_of_vowels