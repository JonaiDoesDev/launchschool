def divisible_by_4(number)
  number % 4 == 0
end

def divisible_by_100(number)
  number % 100 == 0
end

def divisible_by_400(number)
  number % 400 == 0
end


def leap_year?(number)
  if number < 1752 && divisible_by_4(number) == true
    puts "#{number} is a leap year"
  elsif divisible_by_4(number) == true && divisible_by_100(number) == false
    puts "#{number} is a leap year"
  elsif (divisible_by_4(number) == true && divisible_by_100(number) == true) && divisible_by_400(number) == true
    puts "#{number} is a leap year"
  else
    puts "#{number} is not a leap year" 
  end
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true