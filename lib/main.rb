require './user'
require './dealer'

class Main
  include Cards

  # @@user = User.new

  def initialize
    puts("ゲームを開始します。")
    @@player = Player.new(User.new)
    # @@dealer = Dealer.new
    @@player.start_up
    @@player.play
    # @@dealer.play
    user_score = @@player.stack.map(&:to_i).sum
    # dealer_score = @@dealer.stack.map(&:to_i).sum
    puts('あなたの得点は' + user_score.to_s + 'です。')
    # puts('ディーラーの得点は' + dealer_score.to_s + 'です。')
    # judge(user_score, dealer_score)
    puts("ゲームを終了します。")
  end

  # def judge(player_score, dealer_score)
  #   if dealer_score > 21 || player_score > dealer_score
  #     puts('あなたの勝ちです！')
  #   elsif dealer_score <= 21 && dealer_score > player_score
  #     puts('ディーラーの勝ちです！')
  #   elsif player_score == dealer_score
  #     puts('引き分けです！')
  #   end
  # end
end

Main.new