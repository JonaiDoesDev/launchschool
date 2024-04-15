def prompt(message)
  puts ">> #{message}"
end

def calculation(loan_amount, monthly_interest_rate, loan_duration_in_months )
  loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
end

prompt("Welcome to the monthly mortgage calculator!")

loop do
  prompt("What is your loan amount?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f <= 0
      prompt("You need to enter a valid amount.")
    else
      break
    end
  end


  prompt("What is your Annual Percentage Rate (APR)?")
  interest = ''

  loop do
  interest = gets.chomp
    # apr = (gets.chomp / 100) / 12
    if interest.empty? || interest.to_f <= 0
      prompt("You need to enter a valid APR.")
    else
      break
    end
  end

  prompt("What is your loan duration in years?")
  loan_duration = ''
  
  loop do
    loan_duration = gets.chomp
    if loan_duration.empty? || loan_duration.to_i <= 0
      prompt("You need to put a valid year loan duration amount.")
    else
      break
    end
  end

  monthly_interest_rate = (interest.to_f / 100) / 12
  loan_duration_in_months = loan_duration.to_i * 12

  monthly_payment = calculation(loan_amount, monthly_interest_rate, loan_duration_in_months)
  prompt("Your monthly mortgage payment is $#{format('%.2f', monthly_payment)}")

  prompt("Would you like to calculate another mortgage payment? Type in 'y' or 'n'")
  answer = gets.chomp

  break unless answer == 'y'.downcase

end
prompt("Goodbye!")




=begin
Problem:
Build a mortgage Calculator that determines the monthly payment (output) *Assuming that interst is compounded monthly*\

Example/test cases:
"225 Monthly Car payment"
m = p * (j / (1 - (1 + j)**(-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

Data structure:
input: integers
output: string

Algo:
1. Ask the user for the loan amount
2. Ask the user for the APR
3. Ask the user for the loan duration
4. Convert the APR to a monthly rate
5. Convert the loan duration into months
6. plug in numbers into formula <----could be its own method
7. display what the monthly payment will be

Code: See above

=end
