require './user'
require './dealer'

class Main
  include Cards

  def initialize
    puts("ゲームを開始します。")
    @@user = Player.new(User.new)
    @@dealer = Player.new(Dealer.new)
    @@user.start_up
    @@dealer.start_up
    @@user.play
    @@dealer.play
    user_score = @@user.sum_stack
    dealer_score = @@dealer.sum_stack
    puts('あなたの得点は' + user_score.to_s + 'です。')
    puts('ディーラーの得点は' + dealer_score.to_s + 'です。')
    judge(user_score, dealer_score)
    puts("ゲームを終了します。")
  end

  def judge(player_score, dealer_score)
    if dealer_score > 21 || player_score > dealer_score
      puts('あなたの勝ちです！')
    elsif dealer_score <= 21 && dealer_score > player_score
      puts('ディーラーの勝ちです！')
    elsif player_score == dealer_score
      puts('引き分けです！')
    end
  end
end

Main.new