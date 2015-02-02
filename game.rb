require_relative 'rules'

# Class: Game
#
# Determines who wins the game by calling the Rules class and outputs the winner of the game and the match.
#
# Attributes:
# name             - String: the name of the player obj.
# games_won        - Integer: the running total of the player's wins during a best of three match. 
# moves            - Array: the choices the players choose for each game.
# turn             - Integer: The most recent move for each player.
# p1               - Object:  Player 1 object.
# p2               - Object:  Player 2 object.   
#
# Public Methods:
# #make_a_move
# #winner_of_game
# #determine_winner
#


class Game
  
  attr_accessor :name, :games_won, :moves, :p1, :p2
  
  def initialize(p1, p2)
    @p1_games_won = 0
    @p2_games_won = 0
    @name = name
    @games_won = 0
    @turn = 0
    @moves = []
    @p1 = p1
    @p2 = p2
  end

  
  # Public: #make_a_move
  # Calls the choose_a_move method in Player class.
  #
  # Parameters:
  #
  #
  # Returns:
  # @turn:         :The number for the player's last choice of move.
  #
  # State changes:
  # none

  def make_a_move
    @p1.choose_a_move
    @p2.choose_a_move
  end
  
  # Public: #winner_of_game
  # Calls the Rules class to compare the turns and determines the winner of the game.
  #
  # Parameters:
  # none
  #
  # Returns:
  # nil.
  #
  # State changes:
  # adds to @p1_games_won or @p2_games_won
  
  def winner_of_game    
      until @p1_games_won == 3 || @p2_games_won == 3
        make_a_move
        p1 = @p1.moves.last
        p2 = @p2.moves.last
        rules = Rules.new
        if rules.check_rules(p1, p2) == 1
          puts "Player1 wins"
          @p1_games_won += 1
        elsif rules.check_rules(p1, p2) == 2
          puts "Player2 wins!"
          @p2_games_won += 1
        else
          puts "Tie. Try again!"
        end
      end   #end #end of while
  end  #end of method

  
  # Public: #determine_winner
  # Calls all the methods needed to run the game and displays a message for the winner.
  #
  # Parameters:
  # player1, player2
  #
  # Returns:
  # nil.
  #
  # State changes:
  # none
  
  def determine_winner(player1, player2)
    winner_of_game
    #puts player1.moves.join(" ")
    if @p1_games_won == 3
      puts "Nice match! #{player1.name} wins!"

    else @p2_games_won == 3
      puts "#{player2.name} takes it this time!"
    end
  end
  
end #end of class