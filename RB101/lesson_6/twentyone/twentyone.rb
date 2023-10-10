require 'pry-byebug'

deck_of_cards = {
  :Hearts => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Clubs => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Spades => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"]
}

player_deck = []
dealer_deck = []

def random_draw(deck)
  suit = deck.keys.sample
  cards = deck[suit]
  chosen_card = cards.sample
end

def display_hands(player, dealer)
  puts "The Player's hand: #{player.join(", ")}"
  puts "The dealer's hand: #{dealer.join(", ")}"
end

def hit_or_stay()
  puts 'Would you like to "Hit" or "Stay"?'
  answer = gets.chomp.downcase
  loop do
  if answer == "hit" || "h"
  random_draw(deck_of_cards)
  elsif answer == "stay" || "s"
  random_draw(deck_of_cards)
  else
    puts "You need to choose either to hit or stay."
  end

  end
end



player_score = 0
dealer_score = 0

def find_score(hand)
score = 0
    hand.each do |card|
      if card == "Jack"
          score += "10".to_i
      elsif card == "Queen"
          score += "10".to_i
      elsif card == "King"
          score += "10".to_i
      elsif card == "Ace"
          score += "11".to_i       
      else
        score += card
      end
    end
    score
end


# if ace is drawn choose between 1 or 11 to be the value of ace
# depending on if the total value of the cards respective deck will put it over 21
#if not, choose 11, if yes, choose 1

# def ace_value(player)
#   if player.include?("Ace") && game is < 21 
#   end
# end

loop do
  player_deck << random_draw(deck_of_cards)
  dealer_deck << random_draw(deck_of_cards)
  break if dealer_deck.size == 2
end

player_score = find_score(player_deck)
dealer_score = find_score(dealer_deck)

display_hands(player_deck, dealer_deck)
hit_or_stay()
# display_score(player_score)
# display_score(dealer_score)
