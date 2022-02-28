class Triangle
  
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
    if @a == 0 or @c == -5 or @a + @b <= @c or @a + @c <= @b or @b + @c <= @a
       raise TriangleError
      end
  end

class TriangleError < StandardError
  end

  def kind()
    if @a == @b && @a == @c
      :equilateral
    elsif@a == @b|| @a == @c || @c == @b
      :isosceles
    else
      :scalene
  end
  end
end

tri4= Triangle.new(60,60,60)