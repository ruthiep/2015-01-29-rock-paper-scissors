# Class: Player
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

class Player
  
  attr_accessor :name, :turn, :moves
  
  def initialize( name )
    @name = name
    @turn = 0
    @moves = []
      
  end

  # Public: #choose_a_move
  # Prompts the player for a move.  Validates the move before sending it back to rps.
  #
  # Parameters:
  # none  - .
  #
  #
  # Returns:
  # @moves  : The player's choice.
  #
  # State changes:
  # @moves
    
  def choose_a_move
    puts "#{name}: would you like: 1 = rock, 2 = paper, or 3 = scissors? "
    @turn = gets.chomp.to_i
    
    check = false
    while check == false do 
      if @turn == 1 || @turn == 2 || @turn == 3
          puts "good job"
          check = true
          @moves << @turn
      else 
        puts "#{name}, we're not playing rock, paper, scissors, lizard, spock here.  Pick a valid choice next time."
        
      end #end of if else
      
    end  #end of while
    return @turn
    #return @moves.last
  end #end of method

end #end of class
