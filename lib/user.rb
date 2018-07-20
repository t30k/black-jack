require './card'
require './player'

class User < Player
  @@stack = []

  def initialize

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
      if is_bust
        puts('ディーラーの勝ちです！')
        puts("ゲームを終了します。")
        exit!
      end
    end
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

  def pull_card(order)
    suit = @@card.random_symbol_key
    rank = @@card.random_value_key(suit)
    puts('あなたの引いたカードは' + suit.to_s + 'の' + @@deck[suit][rank].to_s + 'です。')
    return suit, rank
  end

  def add_card_player_deck(suit, rank)
    @@stack.push(@@deck[suit][rank])
  end

  def output_score
    puts('あなたの現在の得点は' + @@stack.map(&:to_i).sum.to_s + 'です。')
  end

  def is_bust
    true if @@stack.map(&:to_i).sum > 21
  end

  def sum_stack
    @@stack.map(&:to_i).sum
  end
end