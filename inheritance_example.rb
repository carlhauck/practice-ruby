class Vehicle
  def initialize(input_options)
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

class Car < Vehicle
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :type, :weight

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(fuel: "unleaded", make: "Hyundai", model: "Elantra Touring")
bike = Bike.new(type: "road bike", weight: "10")
car.accelerate
car.accelerate
bike.accelerate
p car
p bike
car.honk_horn
bike.ring_bell
puts "My car is a #{car.make} #{car.model} and it guzzles #{car.fuel} gas."