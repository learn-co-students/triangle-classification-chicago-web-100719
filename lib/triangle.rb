class Triangle

  attr_accessor :a, :b, :c 

  def initialize (a, b, c)
  @a = a
  @b = b
  @c = c
  end

  def kind
    if( 
      a <= 0 || b <=0 || c <=0 || (a + b) <= c || (a + c) <= b || (b + c) <= a
    )
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif a == b && b == c
      :equilateral

    elsif a == b && b != c || a == c  && c != b || b == c && b != a
      :isosceles

    elsif a != b && b != c && a != c
      :scalene
    end








  end

  class TriangleError < StandardError
    def message 
    "ARE YOU TRYING TO ALTER REALITY?!"
    end
  end

end
