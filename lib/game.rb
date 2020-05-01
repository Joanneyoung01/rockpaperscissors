class Game

  def initialize
    @moves = ["rock", "paper", "scissors"]
  end 

  def computer_move
    @moves.sample
  end

  def win?(playermove)
    true
  end
end