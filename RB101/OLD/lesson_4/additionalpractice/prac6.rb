flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.map! { |element| element[0, 3]}

p flintstones