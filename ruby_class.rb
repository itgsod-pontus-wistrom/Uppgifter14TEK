class Rectangle

  def initialize(a, b)
    @a=a
    @b=b
  end

  def arr
    puts @a*@b
  end

end
rectangle = Rectangle.new(5, 4)
rectangle.arr

class Square < Rectangle
  def initialize(side)
    @a=side
    @b=side
  end
end
square=Square.new(5)
square.arr

