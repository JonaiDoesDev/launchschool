def prompt(string)
  puts "=>>> #{string}"
end

prompt("Welcome to CALCULATOR")
prompt("Please select a number")
num1 = gets.chomp.to_i

prompt("Thank you, now selectr a second number")
num2 = gets.chomp.to_i

prompt("Now select what mathematical operation you would like to do. You can choose from")
prompt("Add (type: +), Subtract (type: -), Multiply (type: x), or Divide (type: /)")

operation = gets.chomp

# Mathematical Operations

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1.to_f / num2.to_f
end

def answer(ans)
  puts "Your answer is #{ans}"
end



case operation
when "+"
  ans = add(num1, num2)
  answer(ans)
when '-'
  ans = subtract(num1, num2)
  answer(ans)
when 'x'
  ans = multiply(num1, num2)
  answer(ans)
when '/'
  ans = divide(num1, num2)
  answer(ans)
else
  prompt("You didn't choose a proper operation")
end






=begin
ask the user for 2 numbers
ask the user for an operation to perform
perform the operation on the two numbers
output the results
=end