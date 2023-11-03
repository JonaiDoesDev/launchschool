def greetings(str)
  puts str.object_id
  str = "another string"
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

puts word.object_id
puts str # will not output as it is not defined, will throw and eror

# Outputs 'Goodbye'