  def prompt(message)
    puts "==> #{message}"
  end

  def number?(input)
    input.to_i.to_s == input
  end

  def rate?(input)
    input.to_i.to_s == input
  end

  prompt("Welcome to the car loan calculator!")
  prompt("I can help figure out your monthly payment.")
  prompt("To start off, what is your current loan amount?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if number?(loan_amount)
      break
    else prompt("Thats not a valid number. Try again.")
    end
  end

  prompt("What is your APR?")

  annual_rate = ''
  loop do
    annual_rate = gets.chomp
    if rate?(annual_rate)
      break
    else prompt("Thats not a valid number. Try again.")
    end
  end

  monthly_rate = (annual_rate.to_f / 100) / 12

  prompt("What is the loan term in months?")

  loan_term = ''
  loop do
    loan_term = gets.chomp
    if number?(loan_term)
      break
    else prompt("Thats not a valid number. Try again.")
    end
  end
 


puts annual_rate
puts monthly_rate
puts loan_term
puts loan_amount

puts monthly_payment = loan_amount.to_i * (monthly_rate.to_f / (1 - (1 + monthly_rate.to_f)**(-loan_term.to_i)))