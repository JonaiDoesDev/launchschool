def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num| 
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  puts saved_number
end
