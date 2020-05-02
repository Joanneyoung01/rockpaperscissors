class Game

  def computer_move
    number = rand(1..3)
    if number == 1
      return "rock"
    elsif number == 2
      return "paper"
    else 
      return "scissors"
    end
  end

  # def win?(playermove)
  #   true
  # end
end