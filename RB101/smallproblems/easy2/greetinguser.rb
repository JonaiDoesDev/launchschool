puts "What is your name?"
ans = gets.chomp
new_ans = ans.chop

if ans[-1] == "!"
  
  puts "HELLO #{new_ans.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{new_ans}."
end
