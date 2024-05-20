# This class represents the game board for tic-tac-toe
class GameBoard
  def initialize
    self.game_board =
      [
        ['_', '_', '_'],
        ['_', '_', '_'],
        ['_', '_', '_']
      ]
  end

  # Prints the game board to the console in a readable format
  def print_board
    game_board.each do |row|
      puts row.join(' ')
    end
  end

  # Places a symbol on the square of a player's choice
  # Coordinate is passed in the form of an [X, Y] array
  def receive_hit(coordinate, symbol)
    if game_board[coordinate[0]][coordinate[1]] == '_'
      game_board[coordinate[0]][coordinate[1]] = symbol
    else
      puts 'This spot is taken. Try again!'
    end

    print_board
    game_over?(symbol)
  end

  # Lets the passed player take their turn
  def take_turn(player)
    player.place_hit(game_board)
  end

  # Add a method for starting a new game (will assign points to players if they win)

  private

  attr_accessor :game_board

  # Checks to see if the game has been won
  def game_over?(symbol)
    row1 = game_board[0]
    row2 = game_board[1]
    row3 = game_board[2]

    horizontal_win?(symbol) ||
      vertical_win?(row1, row2, row3, symbol) ||
      diagonal_win?(row1, row2, row3, symbol)
  end

  def horizontal_win?(symbol)
    game_board.any? { |row| row.all?(symbol) }
  end

  def vertical_win?(row1, row2, row3, symbol)
    win_found = false

    3.times do |n|
      win_found = true if row1[n] == symbol && row2[n] == symbol && row3[n] == symbol
    end

    win_found
  end

  def diagonal_win?(row1, row2, row3, symbol)
    row1[0] == symbol && row2[1] == symbol && row3[2] == symbol ||
      row1[2] == symbol && row2[1] == symbol && row3[0] == symbol
  end
end
