class Triangle
  # write code here

  attr_accessor :length_a, :length_b, :length_c

  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

  def kind
    if self.length_a + self.length_b <= self.length_c || self.length_a + self.length_c <= self.length_b || self.length_c + self.length_b <= self.length_a || self.length_a <= 0 || self.length_b <=0 || self.length_c <= 0
      raise TriangleError
    elsif self.length_a == self.length_b && self.length_b == self.length_c
      :equilateral
    elsif self.length_a == self.length_b || self.length_a == self.length_c || self.length_b == self.length_c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle, please correct the lengths of the sides."
    end
  end
end
