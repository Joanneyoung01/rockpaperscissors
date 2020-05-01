require 'game'

describe Game do
  it "outputs a computer move" do
    #update stubbing
    allow(subject).to receive(:rand).and_return("rock")
    expect(subject.computer_move).to eq "rock"
  end

  it "outputs a loss" do
    expect(subject).to respond_to(:win?)
  end

  it "outputs true if user wins" do
    expect(subject.win?("rock")).to eq true
  end
end