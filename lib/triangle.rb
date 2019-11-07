class Triangle
  attr_reader :kind

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    if a == 0 || b == 0 || c == 0 || a < 0 || b < 0 || c < 0 || a + b <= c || a + c <= b || b + c <= a
    raise TriangleError
    elsif a == b && a == c 
      @kind = :equilateral
    elsif a == b || a == c || b == c
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  
  class TriangleError < StandardError
    puts "oh no!"
  end
end
