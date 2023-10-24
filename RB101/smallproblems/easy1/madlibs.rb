# answers = []

# puts "Please provide a noun."
# answer = gets.chomp.downcase
# answers << answer
# puts "Please provide a verb"
# answer = gets.chomp.downcase
# answers << answer
# puts "Please provide an adverb"
# answer = gets.chomp.downcase
# answers << answer
# puts "Please provide an adjective"
# answer = gets.chomp.downcase
# answers << answer


# puts "#{answers[0]} likes to #{answers[1]} #{answers[2]} over the #{answers[3]} car"

def prompt
  english = ["noun", "verb", "adverb", "adjective"]
  array = []
  counter = 0
  loop do
  puts "Please provide a #{english[counter]}"
  answer = gets.chomp.downcase
  array << answer
  counter += 1
  break if counter == english.size
  end

  puts "#{array[0]} likes to #{array[1]} #{array[2]} over the #{array[3]} car"
  
end

prompt