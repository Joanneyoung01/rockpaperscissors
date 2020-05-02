class Game

  BEATS = {
    'rock'     => 'paper',
    'paper'    => 'scissors',
    'scissors' => 'rock',
  }

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

  def gamematch(playermove)
    if computer_move == playermove
      "draw"
    elsif playermove == BEATS[computer_move]
      "win"
    else
      "lose"
    end
  end
end