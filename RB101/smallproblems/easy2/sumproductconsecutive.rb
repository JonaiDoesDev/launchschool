puts "Enter a number greater than 0"
num = gets.chomp.to_i

puts "Would you like to multiply(m) or add(a)"
ans = gets.chomp

if ans == "a"
  puts "The sum of the digits between 1 and #{num} is #{(1..num).reduce(&:+)}"
else ans == "m"
  puts "The product of the digits between 1 and #{num} is #{(1..num).reduce(&:*)}"
end
