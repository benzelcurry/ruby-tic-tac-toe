require_relative 'classes/game_board'
require_relative 'classes/player'
require_relative 'classes/game'

# Maybe extract all logic to a Game class and pass the board + players to it?
# Might move some functions from GameBoard to Game as well
game_board = GameBoard.new
player_one = Player.new('Foo', 'X')
player_two = Player.new('Bar', 'O')
game = Game.new

game.game_loop(player_one, player_two, game_board)

#TODOS:
# 1. Get gameboard to wipe if a new game is selected
# 2. Get input validation
# 3. Have user re-enter their input if not valid
# 4. Get game winner logging to display score
