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

  # Places a symbol on the square of a player's choice
  def receive_hit(coordinate, symbol)
    target = game_board[coordinate[0]][coordinate[1]]
    if target == ' '
      self.target = symbol
    else
      puts 'This spot is taken. Try again!'
    end

    # Insert method here for checking if game is over
  end

  private

  attr_accessor :game_board
end
