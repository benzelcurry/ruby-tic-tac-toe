require_relative 'classes/game_board'
require_relative 'classes/player'

# Maybe extract all logic to a Game class and pass the board + players to it?
# Might move some functions from GameBoard to Game as well
game_board = GameBoard.new
player_one = Player.new('Foo', 'X')
player_two = Player.new('Bar', 'O')
