class Game

  BEATS = {
    'rock'     => 'paper',
    'paper'    => 'scissors',
    'scissors' => 'rock',
  }

  attr_reader :playermove, :comp, :result, 

  def initalize
    @playermove = ""
    @comp = ""
  end


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

  def gamematch(playermove = playermove)
    @playermove = playermove
    @comp = computer_move
    
    if @comp == @playermove
      @result = "draw"
      return "draw"
    elsif @playermove == BEATS[@comp]
      @result = "win"
      "win"
    else
      @result = "lose"
      "lose"
    end
    return @result
  end

  def result(move)
    @playermove = move
    "The computer played #{@comp}, the result is #{gamematch(@playermove)}"
  end
end