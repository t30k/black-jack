require './player'
require './dealer'

class Main
  include Cards

  @@player = Player.new
  @@dealer = Dealer.new

  def initialize
    puts("ゲームを開始します。")
    @@player.play
    @@dealer.play
    player_score = @@players_cards.map(&:to_i).sum
    dealer_score = @@dealers_cards.map(&:to_i).sum
    puts('あなたの得点は' + player_score.to_s + 'です。')
    puts('ディーラーの得点は' + dealer_score.to_s + 'です。')
    judge(player_score, dealer_score)
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