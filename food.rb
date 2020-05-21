require "./merch.rb"
require "./sale.rb"

class Food < Merch
  
  include Sale

  def initialize(input_hash)
    super
    @shelf_life = input_hash[shelf_life]
  end

end