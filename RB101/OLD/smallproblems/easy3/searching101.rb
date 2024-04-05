numbers = []

print 'Enter your first number'
numbers << gets.chomp.to_i

print 'Enter your second number'
numbers << gets.chomp.to_i

print 'Enter your third number'
numbers << gets.chomp.to_i

print 'Enter your fourth number'
numbers << gets.chomp.to_i

print 'Enter your fifth number'
numbers << gets.chomp.to_i

print 'Enter your last number'
sixth_number = gets.chomp.to_i

same_numbers = numbers.select do |n|
 n == sixth_number
end

p numbers
p same_numbers
p sixth_number


 if same_numbers.include?(sixth_number)
 puts "Your last number #{sixth_number} is part of #{numbers}"
else
  puts "Your last number #{sixth_number} is not part of #{numbers}"
end