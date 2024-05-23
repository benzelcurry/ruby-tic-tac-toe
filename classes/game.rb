# Class used for instantiating the actual game of tic tac toe
class Game
  attr_accessor :game_over, :turn, :winner

  def initialize
    self.game_over = false
    self.turn = 1
  end

  def game_loop(player_one, player_two, game_board)
    until game_over
      if turn == 1
        player_move(game_board, player_one)
      else
        player_move(game_board, player_two)
      end
    end

    puts "Game over! #{winner} has won! \nPlayer 1 points: #{player_one.score}\nPlayer 2 points: #{player_two.score}"
    continue?(player_one, player_two, game_board)
  end

  private

  # Abstraction of player movement/win checking logic; game_loop() helper
  def player_move(game_board, player)
    self.turn = (turn == 1 ? 2 : 1) unless player.place_hit(game_board)
    return unless player.place_hit(game_board)

    self.game_over = true
    player.score += 1
    self.winner = player.name
  end

  # Handles new game logic
  def continue?(player_one, player_two, game_board)
    puts "Would you like to play again? (Enter 'yes' or 'no')"
    play_again = gets.chomp.downcase until %w[yes no].include?(play_again)
    if play_again == 'yes'
      self.game_over = false
      self.turn = 1
      game_board.wipe_board
      game_loop(player_one, player_two, game_board)
    else
      exit
    end
  end
end
