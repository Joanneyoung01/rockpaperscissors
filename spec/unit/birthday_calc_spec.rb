require 'birthday_calculator'

describe Birthday_calc do

  it "should respond to birthday?" do
    expect(subject).to respond_to(:birthday?).with(2).arguments
  end

  it "should output happy birthday if today is your birthday" do
    today = Time.new(2020, 07, 12)
    puts "day #{today.day}"
    puts "month #{today.month}"
    puts "day #{today.year}"
    expect(subject.birthday?(12,12)).to eq "happy birthday"
  end
end