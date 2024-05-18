# Class used for instantiating players 
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    self.name = name
    self.symbol = symbol
  end

  # Provides the coordinates where the player would like to place their symbol
  def place_hit(game_board)
    x = get_input('X')
    y = get_input('Y')

    game_board.receive_hit([x, y], symbol)
  end

  private

  # Receives input for one coordinate at a time
  def get_input(axis)
    input = nil

    while input.nil? || !(1..3).include?(input)
      puts "Please enter your #{axis} coordinate"
      input = gets
    end

    input
  end

  attr_accessor :score
end
