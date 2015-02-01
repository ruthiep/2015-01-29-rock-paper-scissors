# Class: Rules
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

class Rules
  
  attr_accessor :name, :games_won, :moves, :p1, :p2
  
  def initialize(name, p1, p2)
    @name = name
    @games_won = 0
    @turn = 0
    @moves = []
    @p1 = p1
    @p2 = p2
    
      
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
  
  def check_rules (move1, move2)
        result = 0
        p1 = move1
        p2 = move2
        if (p1 == 1 && p2 == 3) || (p1 == 2 && p2 == 1) || (p1 == 3 && p2 == 2)
          result = 1
        elsif
          (p1 == 1 && p2 == 2) || (p1 == 2 && p2 == 3) || (p1 == 3 && p2 == 1)
          result = 2
        else
          result = -1
        end
      end
      return result   #end #end of while
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
