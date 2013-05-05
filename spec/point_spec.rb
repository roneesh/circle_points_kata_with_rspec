require 'point'

describe Point do

  it "says 'hello'when poked " do
    point = Point.new(5)
    point.poke.should == 'hello'
  end

  it "initializes with an x coordinate" do
    point = Point.new(5, 5)
    point.x.should == 5
    point.y should == 5
  end



end 