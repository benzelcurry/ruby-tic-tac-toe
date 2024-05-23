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

#TODOS:
# 3. Have user re-enter their input if not valid (do this for new game msg as well)
# 4. Get game winner logging to display score
# 5. Give a user points if they win
