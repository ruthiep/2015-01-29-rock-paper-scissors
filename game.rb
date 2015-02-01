require_relative 'rules'

# Class: Game
#
# Creates a new player object for the RockPaperScissors class.
#
# Attributes:
# name             - String: the name of the player obj.
# games_won        - Integer: the running total of the player's wins during a best of three match. 
# moves            - Integer: the choice they want for the game
#
# Public Methods:
# #choose_a_move
# 

class Game
  
  attr_accessor :name, :games_won, :moves, :p1, :p2
  
  def initialize(name, p1, p2)
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
  # @moves:         :The number for the player's choice of move.
  #
  # State changes:
  # creates a new @moves

  def make_a_move
    @p1.choose_a_move
    @p2.choose_a_move
  end
  
  # Public: #winner_of_game
  # Determines the winner of the game.
  #
  # Parameters:
  #
  #
  # Returns:
  # @???.
  #
  # State changes:
  # adds to @p1_games_won and @p2_games_won
  
  def
     winner_of_game    
      until @p1_games_won == 3 || @p2_games_won == 3
        make_a_move
        p1 = @player1.moves.last
        p2 = @player2.moves.last
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
  #
  #
  # Returns:
  # @members: The completed hash.
  #
  # State changes:
  # none
  
  def determine_winner(player1, player2)
    #get_players
    winner_of_game
    puts player1.moves.join(" ")
    if @p1_games_won == 3
      puts "Nice match! #{player1.name} wins!"

    else @p2_games_won == 3
      puts "#{player2.name} takes it this time!"
    end
  end
  

end #end of class
