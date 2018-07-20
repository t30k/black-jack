require './card'
require './player'

class User < Player
  @@stack = []

  def initialize
    # 2.times do
    #   execute
    # end
  end

  def start_up
    2.times do
      execute
    end
  end

  def play
    output_score
    while is_card_draw
      execute
      output_score
      if is_bust(self)
        puts('ディーラーの勝ちです！')
        puts("ゲームを終了します。")
        exit!
      end
    end
  end

  def pull_card
    symbol_key = @@card.random_symbol_key
    value_key = @@card.random_value_key(symbol_key)
    puts('あなたの引いたカードは' + symbol_key.to_s + 'の' + @@deck[symbol_key][value_key].to_s + 'です。')
    return symbol_key, value_key
  end

  def is_card_draw
    puts("カードを引きますか？y/n")
    str = STDIN.gets
    if str.chomp == "y" then
      return true
    elsif str.chomp == "n" then
      return false
    else
      return false
    end
  end

  def add_card_player_deck(symbol_key, value_key)
    @@stack.push(@@deck[symbol_key][value_key])
  end

  # def is_bust
  #   true if @@user_cards.map(&:to_i).sum > 21
  # end

  def output_score
    puts('あなたの現在の得点は' + @@user_deck.map(&:to_i).sum.to_s + 'です。')
  end
end