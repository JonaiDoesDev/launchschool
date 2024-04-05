def prompt(message)
  puts "=> #{message}"
end

def input          
  puts prompt("Please write word or multiple words:")      
  gets.chomp.downcase
end 

def output(something)
  altered = remove_white_spaces(something)
  puts "Your word, #{something} contains #{altered.chars.size} characters"
end

def remove_white_spaces(string)
  string.delete(" ")
end

answer = input()
output(answer)

