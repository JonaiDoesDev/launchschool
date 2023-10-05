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

def display_hands(hand1, hand2)
  puts "The Player's hand: #{hand1}"
  puts "The dealer's hand: #{hand2}"
end

loop do
  player_deck << random_draw(deck_of_cards)
  dealer_deck << random_draw(deck_of_cards)
  break if player_deck.size == 2 && dealer_deck.size == 2
end

display_hands(player_deck, dealer_deck)

Test