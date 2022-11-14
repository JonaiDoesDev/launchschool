# def calculate_bonus(number, boolean)

#   if boolean == true
#     number / 2
#   else boolean == false
#     number - number
#   end

  
# end

def calculate_bonus(number, boolean)
  boolean ? (number / 2) : 0
end



print calculate_bonus(1000, true)