class Triangle
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    lengths = [@x, @y, @z]
    if (lengths.any? { |x| x <= 0 }) || (@x >= @y + @z) || (@y >= @x + @z) || (@z >= @x + @y)
      raise TriangleError
    else
      if @x == @y && @y == @z
        return :equilateral
      elsif (@x == @y && @y != @z) || (@y == @z && @x != @y) || (@x == @z && @x != @y)
       return :isosceles
      else
       return :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
