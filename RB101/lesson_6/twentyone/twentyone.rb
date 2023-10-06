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
  puts "The Player's hand: #{player}"
  puts "The dealer's hand: #{dealer}"
end

def card_value_conversions(player, dealer)
  new_player_deck = player.map do |card|
      if card == "Jack"
        "10".to_i
      elsif card == "Queen"
        "10".to_i
      elsif card == "King"
        "10".to_i
      end
    end
  player << new_player_deck

  new_dealer_deck = dealer.map do |card|
      if card == "Jack"
        "10".to_i
      elsif card == "Queen"
        "10".to_i
      elsif card == "King"
        "10".to_i
      end
  end
  dealer << new_dealer_deck
end


# def winning_hand(player, dealer)
#   usuable_card_values_player = card_value_conversions(player)
#   usuable_card_values_player.sum
# end


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

card_value_conversions(player_deck, dealer_deck)
display_hands(player_deck, dealer_deck)

# display_hands(player_deck, dealer_deck)
# winning_hand(player_deck, dealer_deck)
