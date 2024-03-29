VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "==> #{message}"
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper") ||
    (first == "rock" && second == "lizard") ||
    (first == "lizard" && second == "spock") ||
    (first == "spock" && second == "scissors") ||
    (first == "scissors" && second == "lizard") ||
    (first == "lizard" && second == "paper") ||
    (first == "paper" && second == "spock") ||
    (first == "spock" && second == "rock")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif win?(computer, player)
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

    prompt("You chose: #{player.capitalize} The Computer chose: #{computer.capitalize}")

    display_results(player, computer)
    prompt("Want to play again?")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

prompt("Goodbye")