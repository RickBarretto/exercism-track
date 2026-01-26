def pair_of_aces?(my_cards)
  2 == my_cards.count("ace")
end

def blackjack?(my_cards)
  "blackjack" == Blackjack.card_range(my_cards[0], my_cards[1])
end

def high?(my_cards)
  "high" == Blackjack.card_range(my_cards[0], my_cards[1])
end

def mid?(my_cards)
  "mid" == Blackjack.card_range(my_cards[0], my_cards[1])
end

def low?(my_cards)
  "low" == Blackjack.card_range(my_cards[0], my_cards[1])
end

module Blackjack
  def self.parse_card(card)
    return 11 if card == "ace"
    
    begin
      num_cards = %w(two three four five six seven eight nine)
      2 + num_cards.index(card) % 10
    rescue
       if (%w(ten jack queen king)).include? card then 10 else 0 end
    end
  end

  def self.card_range first_card, second_card
    sum = (Blackjack.parse_card first_card) + (Blackjack.parse_card second_card)
    case sum
      when  4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end  
  end

  def self.first_turn(first_card, second_card, dealers_card)    
    cards = [first_card, second_card]

    case
      when pair_of_aces?(cards) then "P" 
      when blackjack?(cards)    then (Blackjack.parse_card(dealers_card) >= 10)? "S" : "W"
      when high?(cards)         then "S"
      when mid?(cards)          then (Blackjack.parse_card(dealers_card) < 7) ? "S" : "H"
      when low?(cards)          then "H"
    end
  end
end
