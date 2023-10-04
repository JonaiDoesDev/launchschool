require 'pry-byebug'

deck_of_cards = {
  :hearts => [[2, 3, 4, 5, 6, 7, 8, 9, 10], ["Ace"],["Jack", "Queen", "King"]],
  :diamonds => [[2, 3, 4, 5, 6, 7, 8, 9, 10], ["Ace"], ["Jack", "Queen", "King"]],
  :clubs => [[2, 3, 4, 5, 6, 7, 8, 9, 10], ["Ace"], ["Jack", "Queen", "King"]],
  :spades => [[2, 3, 4, 5, 6, 7, 8, 9, 10], ["Ace"], ["Jack", "Queen", "King"]]
}

player_deck = []
dealer_deck = []


def random_draw(deck)
  decky = {}
  deck.to_a.sample << decky
  decky
  end


random_draw(deck_of_cards)


# Game Logic
binding.pry
loop do
  deck_of_cards.to_a.sample << player_deck
  break if player_deck.size == 2
end

puts player_deck

players_turn

dealers_turn