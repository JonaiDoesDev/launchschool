def century?(year)
  if year.between?(2001, 2021)
    puts "new century"
  end 
end

century?(2001)