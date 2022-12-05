names = ['kim', 'joe', 'sam']

names.each_with_index do|_, idx|
  puts "#{idx*2}. got a name!"
end