class Triangle

  class TriangleError < StandardError
  end

  attr_accessor :length_x, :length_y, :length_z

  def initialize(length_x, length_y, length_z)
    @length_x = length_x
    @length_y = length_y
    @length_z = length_z
  end

  def negative_lengths
    if self.length_x <= 0
      true
    elsif self.length_y <= 0
      true
    elsif self.length_z <= 0
      true
    end
  end

  def triangle_inequality
    if (self.length_x + self.length_y) <= self.length_z
      true
    elsif (self.length_x + self.length_z) <= self.length_y
      true
    elsif (self.length_y + self.length_z) <= self.length_x
      true
    end
  end

  def kind
    if self.negative_lengths
      raise TriangleError
    elsif triangle_inequality
      raise TriangleError
    elsif self.length_x == self.length_y && self.length_x == self.length_z
      :equilateral
    elsif self.length_x == self.length_y || self.length_x == self.length_z || self.length_y == self.length_z
      :isosceles
    else
      :scalene
    end
  end

end
