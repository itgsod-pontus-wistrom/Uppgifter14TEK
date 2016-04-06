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
square2=Square.new(7)
square2.arr

class Vehicle
  def initialize(gear, speed)
    @gear=gear
    @speed=speed
  end

  def speedUp
    @speed+=1
  end

  def applyBreaks
    @speed -=1
  end

  def changeUp
    @gear +=1
  end

  def changeDown
    @gear -=1
  end

end