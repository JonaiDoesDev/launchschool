require 'pry-byebug'

def find_at_risk_square(line, board)
  binding.pry
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end