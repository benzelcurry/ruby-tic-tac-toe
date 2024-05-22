# Class used for instantiating the actual game of tic tac toe
class Game
  attr_accessor :game_over, :turn

  def initialize
    self.game_over = false
    self.turn = 1
  end

  def game_loop(player_one, player_two)
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

    self.game_over = false if continue?
  end

  def continue?
    play_again = gets.downcase until ['yes', 'no'].include?(play_again)
    play_again == yes
  end
end
