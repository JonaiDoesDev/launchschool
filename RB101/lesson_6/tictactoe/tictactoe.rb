require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

scores = {"Player" => 0, "Computer" => 0}

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Player: #{PLAYER_MARKER} | Computer: #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

board = initialize_board
display_board(board)

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
 end

def player_places_piece!(brd)
  square = ''
  loop do
  prompt "Choose a square: #{joinor(empty_squares(brd))}"
  square = gets.chomp.to_i
  break if empty_squares(brd).include?(square)
  prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

   #offense
   if !square
    WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
    end
  end

  #defence
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  
  if !square && empty_squares(brd).include?(5)
    square = 5
  end

  #just pick a square
  if !square
    square = empty_squares(brd).sample
  end

brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)

  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def display_scoreboard(scores)
  puts "Score: Player: #{scores["Player"]} | Computer: #{scores["Computer"]}"
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end


#START OF PROGRAM LOGIC

puts "First to 5 wins!"

loop do
  board = initialize_board
  first_turn = nil

  loop do
    puts "Do you want to play first (1) or second (2)"
    first_turn = gets.chomp.to_i
    break if [1, 2].include?(first_turn)
      puts "Invalid choice. Please enter 1 for first or 2 for second."
    end

    if first_turn == 2
      computer_places_piece!(board)
      display_board(board)
    end

    loop do
      display_board(board)
      display_scoreboard(scores)

      
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
  
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    scores[detect_winner(board)] += 1
    break if scores[detect_winner(board)] == 5
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "#{detect_winner(board)} has reached 5 wins. They have won the match!"
prompt "Thanks for playing Tic Tac Toe! Goodbye!"