require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def valid_number?(num)
#   num.to_i() != 0
# end

def interger?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  interger?(input) || float?(input)
end

def operation_to_message(op)
 randometer =  case op
                when '1'
                  'Adding'
                when '2'
                  'Subtracting'
                when '3'
                  'Multiplying'
                when '4'
                  'Dividing'
                end

  x =  "Hello I am messing up your program"
  randometer
end

# prompt("Hello, welcome to the calculator. What's your name?")

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp().capitalize()

  if name.empty?()
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")
loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

  if number?(number1)
    break
  else
    prompt("Hmm...that doesn't look like a valid number")
  end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
  number2 = Kernel.gets().chomp()

  if number?(number2)
    break
  else
    prompt("Hmm...that doesn't look like a valid number")
  end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
  operator = Kernel.gets().chomp()
  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt("Must choose 1, 2, 3, or 4")
  end
  end

  result = case operator
            when '1'
            number1.to_f() + number2.to_f()
            when '2'
            number1.to_f() - number2.to_f()
            when '3'
            number1.to_f() * number2.to_f()
            when '4'
            number1.to_f() / number2.to_f()
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Goodbye, thank you for using this calculator!")