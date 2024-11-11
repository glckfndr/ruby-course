module Blackjack
  CARDS = { 'ace' => 11, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6,
            'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'jack' => 10, 'queen' => 10,
            'king' => 10 }
  def self.parse_card(card)
    CARDS[card] || 0
  end

  def self.card_range(card1, card2)
    score = CARDS[card1] + CARDS[card2]
    if (4..11).include?(score)
      'low'
    elsif (12..16).include?(score)
      'mid'
    elsif (17..20).include?(score)
      'high'
    elsif score >= 21
      'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    score = card_range(card1, card2)
    dealer_score = CARDS[dealer_card]
    if card1 == 'ace' && card2 == 'ace' && dealer_score == 11
      'P'
    elsif score == 'blackjack'
      dealer_score < 10 ? 'W' : 'S'
    elsif score == 'high'
      'S'
    elsif score == 'mid'
      dealer_score < 7 ? 'S' : 'H'
    elsif score == 'low'
      'H'
    end
  end
end
