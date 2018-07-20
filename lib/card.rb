module Cards
  @@deck = {:spades => {:A => 1, :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                        :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :diamonds => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                             :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :hearts => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :clubs => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                          :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" } }

  @@user_cards = []
  @@dealer_cards = []
end

class Card
  # ♠♦♥☘
  # spades,diamonds,hearts,clubs
  # A,2～10,J,Q,K
  include Cards

  def initialize
  end

  def random_symbol_key
    @@deck.keys.shuffle[0]
  end

  def random_value_key(symbol_key)
    # return @@values.keys.shuffle[0]
    @@deck[symbol_key].keys.shuffle[0]
  end

  def delete_key_value(symbol_key, value_key)
    @@deck[symbol_key].delete(value_key)
  end

  def add_card_user_array(symbol_key, value_key)
    @@user_cards.append(@@deck[symbol_key][value_key])
  end

  def add_card_dealer_array(symbol_key, value_key)
    @@dealer_cards.append(@@deck[symbol_key][value_key])
  end
end

# Card.new