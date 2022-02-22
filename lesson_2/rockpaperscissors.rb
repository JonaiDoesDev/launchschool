VALID_CHOICES = ["rock", "paper", "scissors"]

def test_method
  prompt('test message')
end

# test_method


def prompt(message)
  puts ("==> #{message}")
end

test_method

def display_results(player, computer)
  if (player == "rock" && computer == "scissors") ||
      (player == "paper" && computer == "rock") ||
      (player == "scissors" && computer == "paper")
    prompt("You Won!")
  elsif
    (player == "scissors" && computer == "rock") || 
    (player == "rock" && computer == "paper") ||
    (player == "paper" && computer == "scissors")
    prompt("You Lost!")
  else
    prompt("It's a tie!")
  end
end


  loop do
  player = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = gets.chomp

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer = VALID_CHOICES.sample

  prompt("You chose: #{player.capitalize}. The Computer chose: #{computer.capitalize}")

  display_results(player, computer)
  

  prompt("Want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
   end

 prompt("Goodbye")

