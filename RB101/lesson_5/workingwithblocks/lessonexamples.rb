# # [[1, 2], [3, 4]].each do |arr|
# #   p arr.first
# # end


# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end
 

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

