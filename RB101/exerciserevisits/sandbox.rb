# fruits = ['apple', 'banana', 'pear']
# teh_s = []

# fruits.each do |item|
#   teh_s << item + "s"
  
# end

#   print teh_s



fruits = ['apple', 'banana', 'pear']



def transform(array)
  array.map do |item|
  item + "s"
  end
end




puts transform(fruits)

# print fruits

# def transform(array)
#   teh_s = []
#   index = 0

#   loop do
#     array. 
