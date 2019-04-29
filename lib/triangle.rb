class Triangle
  # write code here
  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 > 0 && @length2 > 0 && @length3 > 0 && @length1 + @length2 > @length3 && @length1 + @length3 > @length2 && @length2 + @length3 > @length1
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end

  end

  class TriangleError < StandardError
    # triangle error code
  end
end
