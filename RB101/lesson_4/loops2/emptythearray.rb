names = ['Sally', 'Joe', 'Lisa', 'Henry']
counter = 0

loop do
  puts names.pop(counter)
  counter -= -1
   break if names.empty?
end

p names