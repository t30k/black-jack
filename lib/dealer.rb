require './card'

class Dealer
  attr_accessor :symbol, :value

  include Cards

  @@card = Card.new

  def initialize
    2.times do |i|
      execute(i)
    end
  end

  def play
    display_second_card
    output_score
    while is_card_draw
      execute(0)
      output_score
    end
  end

  def execute(i)
    symbol_key, value_key = pull_card(i)
    @@card.add_card_dealer_array(symbol_key, value_key)
    @@card.delete_key_value(symbol_key, value_key)
  end

  def pull_card(i)
    symbol_key = @@card.random_symbol_key
    value_key = @@card.random_value_key(symbol_key)
    if (i == 0)
      puts('ディーラーの引いたカードは' + symbol_key.to_s + 'の' + @@cards[symbol_key][value_key].to_s + 'です。')
    elsif (i == 1)
      puts('ディーラーの2枚目のカードはわかりません。')
      @symbol = symbol_key
      @value = value_key
    end
    return symbol_key, value_key
  end

  def is_card_draw
   true if @@dealers_cards.map(&:to_i).sum < 17
  end

  def display_second_card
    puts('ディーラーの2枚目のカードは' + @symbol.to_s + 'の' + @value.to_s + "でした。")
  end

  def output_score
    puts('ディーラーの現在の得点は' + @@dealers_cards.map(&:to_i).sum.to_s + 'です。')
  end
end