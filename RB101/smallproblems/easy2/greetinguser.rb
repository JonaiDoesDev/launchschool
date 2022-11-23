puts "What is your name?"
users_name = gets.chomp

if users_name[-1] == "!"
  users_name = users_name.chop
  puts "HELLO #{users_name.upcase} WHY ARE YOU SCREAMING?"
else
puts "Hello #{users_name}"
end