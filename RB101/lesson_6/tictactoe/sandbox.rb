require 'pry-byebug'

def example
  new_board = {}
  (1..3).each {|num| new_board[num] = " "}
  new_board
end

def display_board(anything)
  puts anything[1]
  puts anything[2]
  puts anything[3]
end


board = example
display_board(board)

def player_turn(brd)
  # display_board(board)
  puts "choose a number now!"
  player = gets.chomp
  brd[player] = "I did it."
end

display_board(board)
player_turn(board)


