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
class Bycycle < Vehicle
  def initialize(cadence, speed, gear)
    @speed=speed
    @gear=gear
    @cadence=cadence
  end

  def cadenceUp
    @cadence+=1
  end

  def cadenceDown
    @cadence-=1
  end

  def printStates
    puts @cadence
    puts @speed
    puts @gear

  end
end

bike=Bycycle.new(2, 1, 1)
bike.speedUp
bike.printStates

class Car < Vehicle
  def initialize(brand)
    @brand=brand
    @rpm=0
    @light=false
  end

  def lightOn
    @light= true
  end

  def lightOff
    @light=true
  end

  def acc
    @rpm+=500
  end

  def dcc
    @rpm-=500
  end
end

car=Car.new('BMW')
car.lightOn
car.acc
p car