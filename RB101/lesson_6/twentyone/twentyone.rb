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
  chosen_card
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

def stay(deck, dealer, dealerscore)
  dealer << random_draw(deck)
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
        if score + 11 <= 21 
          score += "11".to_i
        else
          score += "1".to_i
        end
      else
        score += card
      end
    end
    score
  end

  def scoreboard(player, dealer, deck)
      find_score(deck)
      puts "Player Score: #{player}"
    if deck.size == 2 && deck[0] == 'King' || deck[0] == 'Queen' || deck[0] == 'Jack'
      puts "Dealer Score: 10"
    elsif deck.size == 2 && deck[0] == 'Ace'
      puts "Dealer Score: 11"
    elsif deck.size == 2
      puts "Dealer Score: #{deck[0]}"
    end
    if deck.size > 2
      puts "Dealer Score: #{dealer}"
    end
  end

  def win_or_lose(playerscore, dealerscore, deck)
    if playerscore == 21
      puts "Player has won the game."
    elsif dealerscore == 21
      puts "Dealer has won the game"
    elsif playerscore > dealerscore && playerscore < 22
      puts "Player has won the game"
    elsif dealerscore > playerscore && dealerscore < 22
      puts "Dealer has won the game"
    elsif playerscore == dealerscore 
      puts "Its a tie!"
    end
    unless playerscore == 21
      scoreboard(playerscore, dealerscore, deck)
    end

  end

#Game Logic

  loop do
    player_deck << random_draw(deck_of_cards)
    dealer_deck << random_draw(deck_of_cards)
    break if dealer_deck.size == 2
  end

  player_score = find_score(player_deck)
  dealer_score = find_score(dealer_deck)

  display_hands(player_deck, dealer_deck)
  scoreboard(player_score, dealer_score, dealer_deck)

  if player_score != 21
    loop do
      puts "Would you like to 'Hit' or 'Stay'?"
      answer = gets.chomp.downcase
    if answer == 'stay' || answer == 's'
      break
  end

  if answer == 'hit' || answer == 'h' 
    deal(deck_of_cards, player_deck)
    display_hands(player_deck, dealer_deck)
    player_score = find_score(player_deck)
    dealer_score = find_score(dealer_deck)
    scoreboard(player_score, dealer_score, dealer_deck)
  else
    puts "You must hit or stay"
  end

  if player_score > 21
      puts "Dealer won!"
    break
  elsif player_score == 21
      puts "Player won!"
    break
    end
  end


  unless player_score >= 21 || dealer_score == 21

  loop do
    display_hands(player_deck, dealer_deck)
    scoreboard(player_score, dealer_score, dealer_deck)
    player_score = find_score(player_deck)
    dealer_score = find_score(dealer_deck)
      if dealer_score == 21
        break
      end

    deal(deck_of_cards, dealer_deck)
    display_hands(player_deck, dealer_deck)
    dealer_score = find_score(dealer_deck)
    if dealer_score.between?(17, 21)
      break
    elsif
      dealer_score == 21
      puts "Dealer won!"
      break
    elsif
      dealer_score > 21
      puts "Player won!"
      break
        end
      end
    end
  end

  player_score = find_score(player_deck)
  dealer_score = find_score(dealer_deck)

  win_or_lose(player_score, dealer_score, dealer_deck)