require 'game'

describe Game do
  let (:rock) { double :rock }
  let (:paper) { double :paper }
  let (:scissors) { double :scissors}

  it "outputs a computer move: rock" do
    allow(subject).to receive(:rand).and_return(1)
    expect(subject.computer_move).to eq "rock"
  end

  it "outputs a computer move: paper" do
    allow(subject).to receive(:rand).and_return(2)
    expect(subject.computer_move).to eq "paper"
  end

  it "outputs a computer move: scissors" do
    allow(subject).to receive(:rand).and_return(3)
    expect(subject.computer_move).to eq "scissors"
  end

  context "Player is Rock" do
    it "should respond to game method with an arguement" do
      expect(subject).to respond_to(:gamematch).with(1).argument
    end

    it "generates result for a draw" do
      allow(subject).to receive(:rand).and_return(1) #computer play is rock
      expect(subject.gamematch('rock')).to eq 'draw' # player is rock
    end
    
    it "generates result for a loss" do
      allow(subject).to receive(:rand).and_return(2) #computer play is paper
      expect(subject.gamematch('rock')).to eq 'lose' # player is rock
    end

    it "generates result for a win" do
      allow(subject).to receive(:rand).and_return(3) #computer play is scissors
      expect(subject.gamematch('rock')).to eq 'win' # player is rock
    end
  end


  context "Player is Paper" do
    it "should respond to game method with an arguement" do
      expect(subject).to respond_to(:gamematch).with(1).argument
    end

    it "generates result for a draw" do
      allow(subject).to receive(:rand).and_return(2) #computer play is paper
      expect(subject.gamematch('paper')).to eq 'draw' # player is paper
    end
    
    it "generates result for a loss" do
      allow(subject).to receive(:rand).and_return(3) #computer play is scissors
      expect(subject.gamematch('paper')).to eq 'lose' # player is paper
    end

    it "generates result for a win" do
      allow(subject).to receive(:rand).and_return(1) #computer play is rock
      expect(subject.gamematch('paper')).to eq 'win' # player is paper
    end
  end

  context "Player is Scissors" do
    it "should respond to game method with an arguement" do
      expect(subject).to respond_to(:gamematch).with(1).argument
    end

    it "generates result for a draw" do
      allow(subject).to receive(:rand).and_return(3) #computer play is scissors
      expect(subject.gamematch('scissors')).to eq 'draw' # player is scissors
    end
    
    it "generates result for a loss" do
      allow(subject).to receive(:rand).and_return(1) #computer play is rock
      expect(subject.gamematch('scissors')).to eq 'lose' # player is scissors
    end

    it "generates result for a win" do
      allow(subject).to receive(:rand).and_return(2) #computer play is paper
      expect(subject.gamematch('scissors')).to eq 'win' # player is scissors
    end
  end

end 