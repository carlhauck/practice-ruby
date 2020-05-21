module Navigation
  
  attr_accessor :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end
  
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car
  
  include Navigation

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike

  include Navigation

  def ring_bell
    puts "Ring ring!"
  end

end

car = Car.new
bike = Bike.new
p car
p bike
p car.speed
car.accelerate
p car.speed
p bike.direction