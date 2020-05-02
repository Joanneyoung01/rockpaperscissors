require 'game'

describe Game do
  it "outputs a computer move: rock" do
    allow(subject).to receive(:rand).and_return(1)
    expect(subject.computer_move).to eq "rock"
  end

  it "outputs a computer move: paper" do
    allow(subject).to receive(:rand).and_return(2)
    expect(subject.computer_move).to eq "paper"
  end

  it "outputs a computer move: scissors" do
    #update stubbing
    allow(subject).to receive(:rand).and_return(3)
    expect(subject.computer_move).to eq "scissors"
  end

end