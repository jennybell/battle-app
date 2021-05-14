

class Game 

  attr_accessor :players, :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def attack(player)
    player.receive_damage
    turn_switch
   end

   def turn_switch
    @turn == player_1 ? @turn = player_2 : @turn = player_1
   end

   def player_1
    @players.first     
   end

   def player_2
    @players.last
   end

end