def double(num)
  puts "#{num.object_id}"
end

int = 2
double(int)


puts int.object_id #=> 2