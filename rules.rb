# Class: Rules
#
# Creates a new player object for the RockPaperScissors class.
#
# Attributes:
# name             - String: the name of the player obj.
# games_won        - Integer: the running total of the player's wins during a best of three match. 
# moves            - Integer: the choice they want for the game
# p1               - Object: Player1 object
# p2               - Object: Player2 object
#
# Public Methods:
# #check_rules
# 

class Rules
  
  attr_accessor :name, :games_won, :moves, :p1, :p2
  
  def initialize
    #@name = name
    @games_won = 0
    @turn = 0
    @moves = []
    @p1 = p1
    @p2 = p2
          
  end  
  
  # Public: #check_rules
  # Compares the players' moves to determine the winner.
  #
  # Parameters:
  #
  #
  # Returns:
  # result
  #
  # State changes:
  # none
  
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
      return result
      binding.pry   #end of if
  end  #end of method
  
end #end of class