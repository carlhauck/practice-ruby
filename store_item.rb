# pool_noodle = {price: 12, color: "hot pink", material: "lead", quantity: 30}
# plastic_flamingo = {price: 21.99, color: "pink", material: "plastic", quantity: 42}
# live_donkey = {:price => 2000, :color => "gray", :material => "organic fur", quantity: 2}

class Merch

  def initialize(input_hash)
    @price = input_hash[:price]
    @color = input_hash[:color]
    @material = input_hash[:material]
    @quantity = input_hash[:quantity]
  end

  attr_accessor :price, :color, :material, :quantity

end

pool_noodle = Merch.new({price: 12, color: "hot pink", material: "lead", quantity: 30})
plastic_flamingo = Merch.new({price: 21.99, color: "pink", material: "plastic", quantity: 42})
live_donkey = Merch.new(price: 2000, color: "gray", material: "organic fur", quantity: 2)

puts pool_noodle.price
puts pool_noodle.color
puts pool_noodle.material
puts pool_noodle.quantity
pool_noodle.price = 50
puts pool_noodle.price

