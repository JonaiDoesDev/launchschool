def number_to_string(number)
  numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  
  number.digits.reverse.map { |num| numbers[num] }.join
end

def signed_number_to_string(number)
  case number <=> 0
  when -1 then "-#{number_to_string(-number)}"
  when +1 then "+#{number_to_string(number)}"
  else          number_to_string(number)
  end
end


puts signed_number_to_string(+785298)