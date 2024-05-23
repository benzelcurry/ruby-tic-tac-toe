# Class used for instantiating players 
class Player
  attr_accessor :name, :symbol, :score

  def initialize(name, symbol)
    self.name = name
    self.symbol = symbol
    self.score = 0
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

    while input.nil? || !(0..2).include?(input)
      puts "Please enter your #{axis} coordinate (accepted values: 0-2)"
      input = gets.to_i
    end

    input
  end
end
