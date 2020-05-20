# pool_noodle = {price: 12, color: "hot pink", material: "lead", quantity: 30}
# plastic_flamingo = {price: 21.99, color: "pink", material: "plastic", quantity: 42}
# live_donkey = {:price => 2000, :color => "gray", :material => "organic fur", quantity: 2}

class Merch

  def initialize(input_price, input_color, input_material, input_quantity)
    @price = input_price
    @color = input_color
    @material = input_material
    @quantity = input_quantity
  end

  attr_accessor :price, :color, :material, :quantity

end

pool_noodle = Merch.new(12, "hot pink", "lead", 30)
plastic_flamingo = Merch.new(21.99, "pink", "plastic", 42)
live_donkey = Merch.new(2000, "gray", "organic fur", 2)

puts pool_noodle.price
puts pool_noodle.color
puts pool_noodle.material
puts pool_noodle.quantity
pool_noodle.price = 50
puts pool_noodle.price

