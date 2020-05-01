require 'game'

describe Game do
  it "outputs a computer move" do
    expect(subject.computer_move).to eq("rock")
  end
end