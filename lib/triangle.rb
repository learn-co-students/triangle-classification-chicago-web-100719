class Triangle
  attr_reader :side_1, :side_2, :side_3, :type

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @type
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 || [@side_1, side_2].sum <= @side_3 || [@side_1, @side_3].sum <= @side_2 || [@side_2, @side_3].sum <= @side_1
      raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3 
      @type = :equilateral
    elsif
      @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      @type = :isosceles
    elsif
      @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      @type = :scalene
    end
    @type
  end


  class TriangleError < StandardError
  end

end
