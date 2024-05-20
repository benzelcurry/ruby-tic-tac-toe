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
    puts "Game over! #{symbol} wins!" if game_over?(symbol)
  end

  # Add a method for starting a new game (will assign points to players if they win)

  private

  attr_accessor :game_board

  # Checks to see if the game has been won
  # Todo: Debug first if logic
  def game_over?(symbol)
    win_found = false
    row1 = game_board[0]
    row2 = game_board[1]
    row3 = game_board[2]

    if game_board.any? { |row| row.all?(symbol) }
      win_found = true
    elsif row1[0] == symbol && row2[1] == symbol && row3[2] == symbol ||
          row1[2] == symbol && row2[1] == symbol && row3[0] == symbol
      win_found = true
    else
      3.times do |n|
        win_found = true if row1[n] == symbol && row2[n] == symbol && row3[n] == symbol
      end
    end

    win_found
  end
end
