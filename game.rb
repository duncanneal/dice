require "./dice"


class Player

  attr_reader :dice

  def initialize(name, dice)
    @dice = dice
  end 
end

class Game

  attr_reader :winner, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 0
  end

  def play!
    until @winner
      player_1_roll = @player_1.dice.roll
      player_2_roll = @player_2.dice.roll

    @turn += 1    

  if player_1_roll > player_2_roll
      @winner = @player_1
  elsif player_1_roll < player_2_roll
      @winner = @player_2
      end      
    end    
  end   
end