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
    x = self.x_point
    d_value = x.abs
    y_chord = y_chord_length(d_value)
    y = rand[(-y_chord/2)..(y_chord/2)]    
    point = Point.new(x, y)
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

  def y_chord_length(d)
    2*sqrt((@circle.radius*@circle.radius)-(d*d))
  end



end