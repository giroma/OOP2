class Player
  def initialize
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end
  def gold_coins
    @gold_coins
  end
  def health_points
    @health_points
  end
  def lives
    @lives
  end
      # WRITERS
  def level_up
    @lives += 1
  end
  def collect_treasure(coins)
    if coins > 0 && coins % 10 == 0
      @gold_coins += coins
      @lives += 1
    else
      @gold_coins += coins
    end
  end
  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives < 1
      restart
    end
  end
  def restart
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end
  def show
    puts @gold_coins
    puts @lives
    puts @health_points
  end
end

ari = Player.new
ari.show

ari.do_battle(5)

ari.show

ari.do_battle(5)

ari.show
