def uppercase?(str)
str == str.upcase
end

puts uppercase?('t')
puts uppercase?('T')
puts uppercase?('Four Score')
puts uppercase?('FOUR SCORE')
puts uppercase?('4SCORE!')
puts uppercase?('')