def century?(year)
  year = year.to_s
  puts year.end_with?("01") 
end

puts century?(2001)