def string_to_number(number)
  numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  
  number.digits.reverse.map { |num| numbers[num] }.join
end

string_to_number(2345)