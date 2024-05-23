require_relative 'classes/game_board'
require_relative 'classes/player'
require_relative 'classes/game'

# Maybe extract all logic to a Game class and pass the board + players to it?
# Might move some functions from GameBoard to Game as well
game_board = GameBoard.new
player_one = Player.new('Player 2', 'X')
player_two = Player.new('Player 1', 'O')
game = Game.new

game.game_loop(player_one, player_two, game_board)
