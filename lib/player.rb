class Player
  include Cards

  @@card = Card.new
  attr_accessor :player

  def initialize(player)
    @player = player
  end

  def start_up
    @player.start_up
  end

  def play
    @player.play
  end

  def execute
    symbol_key, value_key = pull_card
    add_card_player_deck(symbol_key, value_key)
    @@card.delete_key_value(symbol_key, value_key)
  end

  def pull_card
    raise "should be implement"
    # symbol_key = @@card.random_symbol_key
    # value_key = @@card.random_value_key(symbol_key)
    # puts('あなたの引いたカードは' + symbol_key.to_s + 'の' + @@deck[symbol_key][value_key].to_s + 'です。')
    # return symbol_key, value_key
  end

  def is_card_draw

  end

  def is_bust(context)
    true if context.stack.map(&:to_i).sum > 21
  end

  def output_score
    raise "should be implement"
  end

  def add_card_player_deck(symbol_key, value_key)
    raise "should be implement"
  end
  # def add_card_dealer_deck(symbol_key, value_key)
  #   @@dealer_deck.push(@@deck[symbol_key][value_key])
  # end
end