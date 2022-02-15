# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Hello there, please give me a number.")
number1 = Kernel.gets().chomp().to_i()

Kernel.puts("Now give me a second number.")
number2 = Kernel.gets().chomp().to_i()

Kernel.puts("Do you want to 'Add', 'Subtract', 'Multiply', or 'Divide'? ")

operation = Kernel.gets().chomp().downcase


if operation == 'add'
answer = number1 + number2

elsif operation == 'subtract'
  answer = number1 - number2
elsif operation == 'multiply'
  answer = number1 * number2
else operation == 'divide'
  answer = number1.to_f() / number2.to_f()
end

puts answer