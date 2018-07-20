require './card'
require './player'

class Dealer < Player
  include Order

  attr_accessor :suit, :rank
  @@stack = []

  def initialize

  end

  def start_up
    2.times do |i|
      execute(i)
    end
  end

  def play
    display_second_card
    output_score
    while is_card_draw
      execute
      output_score
    end
  end

  def is_card_draw
    true if @@stack.map(&:to_i).sum < 17
  end

  def pull_card(order)
    suit = @@card.random_symbol_key
    rank = @@card.random_value_key(suit)
    if (order == ONE || order == nil)
      puts('ディーラーの引いたカードは' + suit.to_s + 'の' + @@deck[suit][rank].to_s + 'です。')
    elsif (order == TWO)
      @suit = suit
      @rank = rank
      puts('ディーラーの2枚目のカードはわかりません。')
    end
    return suit, rank
  end

  def add_card_player_deck(suit, rank)
    @@stack.push(@@deck[suit][rank])
  end

  def display_second_card
    puts('ディーラーの2枚目のカードは' + @suit.to_s + 'の' + @rank.to_s + "でした。")
  end

  def output_score
    puts('ディーラーの現在の得点は' + @@stack.map(&:to_i).sum.to_s + 'です。')
  end

  def sum_stack
    @@stack.map(&:to_i).sum
  end
end