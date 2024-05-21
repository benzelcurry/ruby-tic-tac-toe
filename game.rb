require_relative 'classes/game_board'
require_relative 'classes/player'

# Maybe extract all logic to a Game class and pass the board + players to it?
# Might move some functions from GameBoard to Game as well
game_board = GameBoard.new
player_one = Player.new('Foo', 'X')
player_two = Player.new('Bar', 'O')
game_over = false
turn = 1

until game_over
  if turn == 1
    game_over = player_one.place_hit(game_board)
    turn = 2
  else
    game_over = player_two.place_hit(game_board)
    turn = 1
  end
end

puts 'Game over! The winner will be decided after the logic is implemented!'
