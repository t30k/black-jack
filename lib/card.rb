module Cards
  @@cards = { :spades => { :A => 1, :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
              :diamonds => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                             :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
              :hearts => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
              :clubs => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                          :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" } }

  @@players_cards = []
  @@dealers_cards = []
end

class Card
  # ♠♦♥☘
  # spades,diamonds,hearts,clubs
  # A,2～10,J,Q,K
  include Cards

  def initialize
  end

  def random_symbol_key
    @@cards.keys.shuffle[0]
  end

  def random_value_key(symbol_key)
    # return @@values.keys.shuffle[0]
    @@cards[symbol_key].keys.shuffle[0]
  end

  def delete_key_value(symbol_key, value_key)
    @@cards[symbol_key].delete(value_key)
  end

  def add_card_player_array(symbol_key, value_key)
    @@players_cards.append(@@cards[symbol_key][value_key])
  end

  def add_card_dealer_array(symbol_key, value_key)
    @@dealers_cards.append(@@cards[symbol_key][value_key])
  end
end

# Card.new