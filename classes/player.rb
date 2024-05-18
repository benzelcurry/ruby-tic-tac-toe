# Class used for instantiating players 
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    self.name = name
    self.symbol = symbol
  end

  private

  attr_accessor :score
end
