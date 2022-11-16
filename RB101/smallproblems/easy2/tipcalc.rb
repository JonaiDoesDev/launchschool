

def calculate_tip
  puts "What is the bill amount?"
    total_bill = gets.chomp.to_i
  puts "What is the tip amount?"
    tip_percentage = gets.chomp.to_i

  total_tip_amount = (total_bill * tip_percentage) / 100
  puts "The tip amount is $#{sprintf('%.2f', total_tip_amount)}"
  
  total_bill_plus_tip = total_tip_amount + total_bill
  puts "The total of your bill including tip is $#{sprintf('%.2f', total_bill_plus_tip)}"
end

calculate_tip