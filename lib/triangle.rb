class Triangle
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 
  
  def kind 
    is_valid? 
    if @a == @side_two && @side_two == @side_three && @side_three == @side_one
      :equilateral
    elsif
      @side_one != @side_two && @side_two != @side_three && @side_three != @side_one 
      :scalene
    else 
      :isosceles
    end 
  end
  
  def is_valid?
    if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_three + @side_one <= @side_two
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError 
  end 
end

  # def validate_triangle
  #   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  #   [a, b, c].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end