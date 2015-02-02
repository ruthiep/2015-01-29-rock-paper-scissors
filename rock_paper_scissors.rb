require 'pry'
require_relative 'player'
require_relative 'game'
require_relative 'rules'

# Class: RockPaperScissors
#
# Starts a new rock paper scissors game and tracks to determine the best of 3 games winner.
#
# Attributes:
# @p1_games_won          - Integer: tracks the number of games won for p1 (player1).
# @p2_games_won          - Integer: tracks the number of games won for p2 (player2).
#
# Public Methods:
# #get_players
# #play_game
# #
# 

class RockPaperScissors
  
  attr_accessor :player1, :player2
  
  def initialize 
   #@p1_games_won = 0
    #@p2_games_won = 0
  end

  # Public: #play_game
  # Calls the method to create new players, creates a new Game object, and then calls determine_winner to display the winner.
  #
  # Parameters:
  # none 
  #
  # Returns:
  # nil.
  #
  # State changes:
  # none
  
  def play_game
    get_players
    g = Game.new(@player1, @player2)
    g.determine_winner(@player1, @player2)      
  end
    
  # Public: #get_players
  # Gets user input for names of the new player objects.
  #
  # Parameters:
  # none
  #
  #
  # Returns:
  # @player1   :player1 obj
  # @player2   :player2 obj
  #
  # State changes:
  # creates new Player objects
  
  def get_players
    puts "Let's play a game!\n Player 1, what is your name?"
    name = gets.chomp.capitalize
    @player1 = Player.new(name) 
    
    puts "Ok. \nPlayer 2, what is your name?"
    name = gets.chomp.capitalize
    @player2 = Player.new(name)
    puts "Ok, #{@player1.name} and #{@player2.name}, Good luck!!"
    return @player1, @player2
  end


end  #end of class

binding.pry