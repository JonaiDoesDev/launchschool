Kernel.puts("Hello, welcome to the calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3 multiply 4) divide")
operator = Kernel.gets().chomp()


result = nil #Not really necessary. Putting it here to remember this.
if operator == "1"
  results = number1.to_i() + number2.to_i()
elsif operator == "2"
  results = number1.to_i() - number2.to_i()
elsif operator == "3"
  results = number1.to_i() * number2.to_i()
else
  results = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{results}")