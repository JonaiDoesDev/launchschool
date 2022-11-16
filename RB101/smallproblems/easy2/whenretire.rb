require 'Date'

def when_retire?
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "What age would you like to retire?"
  retire_age = gets.chomp.to_i

  years_to_retire = retire_age - age
  current_year = Date.today.year
  year_of_retirement = current_year + years_to_retire
  puts "It's #{current_year}. You will retire in the year #{year_of_retirement} "
  puts "You have #{years_to_retire} years left of work!"
end


when_retire?