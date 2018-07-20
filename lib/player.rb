module Order
  ONE = 0
  TWO = 1
end

class Player
  include Cards

  @@card = Card.new
  attr_accessor :formatter

  def initialize(player)
    @formatter = player
  end

  def start_up
    @formatter.start_up
  end

  def play
    @formatter.play
  end

  def execute( order=nil )
    suit, rank = pull_card(order)
    add_card_player_deck(suit, rank)
    @@card.delete_key_value(suit, rank)
  end

  def is_card_draw
    raise "should be implemented"
  end

  def is_bust
    raise "should be implemented"
  end

  def output_score
    raise "should be implemented"
  end

  def add_card_player_deck(suit, rank)
    raise "should be implemented"
  end

  def sum_stack
    @formatter.sum_stack
  end
end