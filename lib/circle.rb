require 'point'

class Circle

  def initialize(radius)
    if radius < 0
      @radius = radius.abs
    else 
      @radius = radius
    end
  end

  def poke
    'hello'
  end

  def radius
    @radius
  end

  def area
    (Math::PI)*@radius*@radius
  end

  def point
    Point.new()
  end 

  def get_rand
    if rand(2) == 0
      rand
    else
      rand * -1
    end
  end

  def x_point
    num = self.get_rand
    return num * rand(@radius)
  end

end