module Cards
  @@deck = {:spades => {:A => 1, :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                        :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :diamonds => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                             :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :hearts => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                           :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" },
            :clubs => { :A => "1", :"2" => "2", :"3" => "3", :"4" => "4", :"5" => "5", :"6" => "6", :"7" => "7",
                          :"8" => "8", :"9" => "9", :"10" => "10", :"J" => "10", :"Q" => "10", :"K" => "10" } }

  @@user_deck = []
  @@dealer_deck = []
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
    @@deck[symbol_key].keys.shuffle[0]
  end

  def delete_key_value(symbol_key, value_key)
    @@deck[symbol_key].delete(value_key)
  end

  # def delete_key_value(symbol_key, value_key)
  #   @@deck[symbol_key].delete(value_key)
  # end
end