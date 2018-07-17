module Cards
  @@cards = { :spades => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "11", :"Q" => "12", :"K" => "13" },
              :diamonds => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                             :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "11", :"Q" => "12", :"K" => "13" },
              :hearts => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "11", :"Q" => "12", :"K" => "13" },
              :clubs => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                          :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "11", :"Q" => "12", :"K" => "13" } }

  # @@symbol = { :spades => :spades, :diamonds => :diamonds, :hearts => :hearts, :clubs => :clubs }

  @@values = { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
               :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "11", :"Q" => "12", :"K" => "13" }

  @@players_cards = []
  @@dealers_cards = []
end

class Card
  # ♠♦♥☘
  # spades,diamonds,hearts,clubs
  # A,2～10,J,Q,K
  include Cards

  def initialize
    # pull_card
    # values = @@cards.values
    # puts(values[rand(values.size)])
  end

  # def pull_card
  #   symbol_key = random_symbol_key
  #   value_key = random_value_key
  #   puts(@@cards[symbol_key][value_key])
  #   delete_key_value(symbol_key, value_key)
  # end

  def random_symbol_key
    return @@cards.keys.shuffle[0]
  end

  def random_value_key
    return @@values.keys.shuffle[0]
  end

  def delete_key_value(symbol_key, value_key)
    @@cards[symbol_key].delete(value_key)
  end

  def add_to_hand_player
  end

  def add_to_hand_dealer
  end
end

# Card.new