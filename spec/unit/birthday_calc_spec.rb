require 'birthday_calculator'

describe Birthday_calc do

  it "should respond to birthday?" do
    expect(subject).to respond_to(:birthday?).with(2).arguments
  end

end