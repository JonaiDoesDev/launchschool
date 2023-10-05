deck_of_cards = {
  :Hearts => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Diamonds => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Clubs => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"],
  :Spades => [2, 3, 4, 5, 6, 7, 8, 9, 10, "Ace", "Jack", "Queen", "King"]
}

# player_deck = random_draw(deck_of_cards)
# dealer_deck = []

def random_draw(deck)
  suit = deck.keys.sample
  cards = deck[suit]
  chosen_card = cards.sample
  puts "You drew a #{chosen_card} of #{suit}"
end

def view_player_deck(deck)
  puts "You have: #{deck}"
end

counter = 0

loop do
  random_draw(deck_of_cards)
  counter += 1
  break if counter == 2
end
