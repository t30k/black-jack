require './card'

class Player
  include Cards

  def initialize
    pull_card
  end

  def pull_card
    card = Card.new
    symbol_key = card.random_symbol_key
    value_key = card.random_value_key
    puts(@@cards[symbol_key][value_key])
    card.delete_key_value(symbol_key, value_key)
  end
end

Player.new