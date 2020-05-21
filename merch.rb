require "./sale.rb"

class Merch

  include Sale

  def initialize(input_hash)
    @price = input_hash[:price]
    @color = input_hash[:color]
    @material = input_hash[:material]
    @quantity = input_hash[:quantity]
  end

  attr_accessor :price, :color, :material, :quantity

end