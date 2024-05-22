# Class used for instantiating the actual game of tic tac toe
class Game
  attr_accessor :game_over, :turn

  def initialize
    self.game_over = false
    self.turn = 1
  end

  def game_loop(player_one, player_two, game_board)
    winner = ''

    until game_over
      if turn == 1
        if player_one.place_hit(game_board)
          self.game_over = true
          winner = 'Player One'
        end
        self.turn = 2
      else
        if player_two.place_hit(game_board)
          self.game_over = true
          winner = 'Player Two'
        end
        self.turn = 1
      end
    end

    puts "The game is over! #{winner} has won!"
    continue?(player_one, player_two, game_board)
  end

  def continue?(player_one, player_two, game_board)
    puts 'Would you like to play again?'
    play_again = gets.chomp.downcase until %w[yes no].include?(play_again)
    if play_again == 'yes'
      self.game_over = false
      game_loop(player_one, player_two, game_board)
    else
      quit
    end
  end
end
