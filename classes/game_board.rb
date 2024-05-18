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

  # Add a method for printing the game board

  # Add a method for starting a new game (will assign points to players if they win)

  protected

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

  # Checks to see if the game has been won
  def game_over?
    win_found = false
    row1 = game_board[0]
    row2 = game_board[1]
    row3 = game_board[2]

    if game_board.any.all == 'X' || game_board.any.all == 'O'
      win_found = true
    elsif row1.include?(symbol)
      if row1[0] == row2[1] && row1[0] == row3[2]
        win_found = true
      elsif row1[2] == row2[1] && row1[2] == row3[0]
        win_found = true
      else
        3.times do |n|
          win_found = true if row1[n] == row2[n] && row1[n] == row3[n]
        end
      end
    end

    win_found
  end
end
