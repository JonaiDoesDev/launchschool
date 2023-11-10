def letter_count(str)
  letters = {}
  str = str.chars
  str.each do |l|
    letters[l] = str.count(l)
  end
  # puts letters
end

puts letter_count("this man is on fire")
