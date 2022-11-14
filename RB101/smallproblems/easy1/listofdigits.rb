def digit_list(number)
   digits_array = number.to_s.chars
   digits_array.map(&:to_i)
end

p digit_list(10)
p digit_list(12345)
p digit_list(7)                  
p digit_list(375290)
p digit_list(444)        