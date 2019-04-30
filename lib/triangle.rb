class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c, :kind

  def initialize(side_a, side_b, side_c)
  	sort_sides = [side_a, side_b, side_c].sort

  	@side_a = sort_sides[0]
  	@side_b = sort_sides[1]
  	@side_c = sort_sides[2]
  end

  def kind
  	if is_triangle?
	  	if side_a == side_b && side_b == side_c
	  		kind = :equilateral
	  	elsif side_a == side_b || side_b == side_c || side_a == side_c
	  		kind = :isosceles
	  	else
	  		kind = :scalene
	  	end
	end
  end

  def is_triangle? 
  	raise TriangleError, "Some of your sides have no length" unless !(side_a == 0 || side_b == 0 || side_c == 0)
	raise TriangleError, "Some sides are less than 0" unless side_a > 0 && side_b > 0 && side_c > 0
  	raise TriangleError, "The two smaller sides combined are smaller than your biggest side." unless (side_a + side_b) > side_c
  	true
  end

  class TriangleError < StandardError
  end
end
