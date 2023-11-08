def divisible_by_four(year)
  year % 4 == 0
end

def divisible_by_one_hundred(year)
  year % 100 == 0
end

def divisible_by_four_hundred(year)
  year % 400 == 0
end

year = gets.chomp
loop do
  if (divisible_by_four(year) == true && divisible_by_one_hundred(year) == true) || (divisible_by_one_hundred(year) == true && divisible_by_four_hundred(year) == true)
    puts "its a leap year"
    break
  else
    puts "Not a leap year"
    break
end
end
