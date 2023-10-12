

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
  if dealer.size == 2
    puts "The Dealer's hand: #{dealer[0]}"
  else
    puts "The dealer's hand: #{dealer.join(", ")}"
  end
end

def deal(deck, hand)
      hand << random_draw(deck)
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

def win_or_lose(playerscore, dealerscore)
  if playerscore == 21
    puts "Player has won the game."
  elsif playerscore > 21
    puts "Player has lost the game."
  elsif dealerscore == 21
    puts "Dealer has won the game."
  elsif dealerscore > 21
    puts "Dealer has lost the game."
  end
end

#Game Logic
loop do
  player_deck << random_draw(deck_of_cards)
  dealer_deck << random_draw(deck_of_cards)
  break if dealer_deck.size == 2
end

display_hands(player_deck, dealer_deck)

player_score = find_score(player_deck)
dealer_score = find_score(dealer_deck)

loop do
  puts "Would you like to 'Hit' or 'Stay'?"
  answer = gets.chomp.downcase
  if answer == 'hit' || answer == 'h'
      deal(deck_of_cards, player_deck)
      break
  elsif answer == 'stay' || answer == 's'
      deal(deck_of_cards, dealer_deck)
      break
  else
      puts "You need to hit or stay"
  end
  player_score
  dealer_score
end

display_hands(player_deck, dealer_deck)