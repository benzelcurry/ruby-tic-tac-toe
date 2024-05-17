# This class represents the game board for tic-tac-toe
class GameBoard
  def initialize
    self.game_board =
      [
        [' ', ' ', ' '],
        [' ', ' ', ' '],
        [' ', ' ', ' ']
      ]
  end

  private

  attr_accessor :game_board
end
