class Triangle
  attr_reader :num1, :num2, :num3

  def initialize(num1, num2, num3)
   @num1 = num1
   @num2 = num2
   @num3 = num3
   
  end

  def kind
    if @num1 <= 0 || @num2 <= 0 || @num3 <= 0 || [@num1, num2].sum <= @num3 || [@num1, @num3].sum <= @num2 || [@num2, @num3].sum <= @num1
      raise TriangleError
    elsif @num1 == @num2 && @num1 == @num3               
      :equilateral
    elsif @num1 == @num2 || @num1 == @num3 || @num2 == @num3  
      :isosceles
    elsif @num1 != @num2 && @num2 != @num3 && @num1 != @num3
      :scalene                         
    end
    
  end

  class TriangleError < StandardError

  end

end
