
class Triangle
attr_accessor :side1, :side2, :side3,:kind

def initialize(side1, side2, side3)
@side1 = side1
@side2 = side2
@side3 = side3
end

def kind
  if valid? != 'valid'
  raise TriangleError
else
    if @side1==@side2 && @side1==@side3 && @side2==@side3
    self.kind = :equilateral
    elsif @side1==@side2 || @side1==@side3 || @side2==@side3
    self.kind = :isosceles
    elsif @side1!=@side2 && @side1!=@side3 && @side2!=@side3
    self.kind = :scalene
    end
  end
end


def valid?
  if @side1==0||@side2==0||@side3==0||@side1<0||@side2<0||@side3<0||@side1+@side2<=@side3||@side1+@side3<=@side2||@side2+@side3<=@side1
    'invalid'
  else
    'valid'
end
end

class TriangleError< StandardError
end
end
