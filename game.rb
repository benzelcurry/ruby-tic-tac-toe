require_relative 'classes/game_board'
require_relative 'classes/player'

game_board = GameBoard.new
player_one = Player.new('Foo', 'X')
player_two = Player.new('Bar', 'O')

game_board.print_board
player_one.place_hit(game_board)
player_two.place_hit(game_board)
game_board.print_board
