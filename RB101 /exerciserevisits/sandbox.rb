# fruits = ['apple', 'banana', 'pear']
# teh_s = []

# fruits.each do |item|
#   teh_s << item + "s"
  
# end

#   print teh_s



fruits = ['apple', 'banana', 'pear']



def transform(array)
  teh_s = []
  array.each do |item|
  item + "s" + " "
  # print mod
  # teh_s.push(mod)
  print teh_s
  end
end




print transform(fruits)

# print fruits