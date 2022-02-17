def prompt(message)
  puts "==> #{message}"
end

def number?(num)
  num.to_i.to_s == num
end

prompt("Welcome to the car loan calculator. I can help figuring out your monthly payment.")
prompt("To start off, what is your current loan amount?")
loan_amount = gets.chomp

loop do
p number?(loan_amount)

end


