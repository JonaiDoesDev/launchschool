# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

testing = names.select do |name|
  name.length > 4
end

puts testing