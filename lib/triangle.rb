class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3, :type

def initialize(s1, s2, s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3
end

  def kind
    length_array = [@s1, @s2, @s3]
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0
      raise TriangleError
    elsif length_array.sort[0] + length_array.sort[1] <= length_array.sort[2]
      raise TriangleError
    elsif @s1 == @s2 && @s1 == @s3
      :equilateral
    elsif length_array.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
