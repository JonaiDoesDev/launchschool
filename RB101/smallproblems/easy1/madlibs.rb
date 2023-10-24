answers = []

puts "Please provide a noun."
answer = gets.chomp.downcase
answers << answer
puts "Please provide a verb"
answer = gets.chomp.downcase
answers << answer
puts "Please provide an adverb"
answer = gets.chomp.downcase
answers << answer
puts "Please provide an adjective"
answer = gets.chomp.downcase
answers << answer


puts "#{answers[0]} likes to #{answers[1]} #{answers[2]} over the #{answers[3]} car"