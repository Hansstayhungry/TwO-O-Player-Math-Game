class Player
  attr_accessor :name, :lives, :turn

  def initialize(name, lives, turn)
    @name = name
    @lives = lives
    @turn = turn
  end

  def self.new_player
    player1 = Player.new("Player 1", 3, true)
    player2 = Player.new("Player 2", 3, false)
    [player1, player2]
  end

  def change_life
    self.lives -= 1
  end
end
