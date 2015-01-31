require 'pry'
require_relative 'player'


# Class: RockPaperScissors
#
# Starts a new rock paper scissors game and tracks to determine the best of 3 games winner.
#
# Attributes:
# @p1_games_won          - Integer: tracks the number of games won for p1 (player1).
# @p2_games_won          - Integer: tracks the number of games won for p2 (player2).
#
# Public Methods:
# #start_game
# #make_a_move
# #winner_of_match
# #winner_of_game
# #
# 

class RockPaperScissors
  
  attr_accessor :player1, :player2
  
  def initialize 
    @p1_games_won = 0
    @p2_games_won = 0
  end
  
  # Public: #start_game
  # Gets user input for names of the new player objects.
  #
  # Parameters:
  # none
  #
  #
  # Returns:
  # @player1.name   :name of player1 obj
  # @player2.name   :name of player2 obj
  #
  # State changes:
  # creates new Player objects
  
  def start_game     
    puts "Let's play a game!\n Player 1, what is your name?"
    name = gets.chomp.capitalize
    @player1 = Player.new(name) 
    
    puts "Ok. \nPlayer 2, what is your name?"
    name = gets.chomp.capitalize
    @player2 = Player.new(name)
    puts "Ok, #{@player1.name} and #{@player2.name}, Good luck!!"
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
    @player1.choose_a_move
    @player2.choose_a_move
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
      if (p1 == 1 && p2 == 3) || (p1 == 2 && p2 == 1) || (p1 == 3 && p2 == 2)
          puts "Player1 wins!"
          @p1_games_won += 1
      elsif
          (p1 == 1 && p2 == 2) || (p1 == 2 && p2 == 3) || (p1 == 3 && p2 == 1)
          puts "Player2 wins!"
          @p2_games_won += 1
      else
        puts "Tie. Try again!"
      end
    end   #end #end of while
  end  #end of method

  # Public: #winner_of_match
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
  
  def winner_of_match
    start_game
    winner_of_game
    puts @player1.moves.join(" ")
    if @p1_games_won == 3
      puts "Nice match! #{@player1.name} wins!"

    else @p2_games_won == 3
      puts "#{@player2.name} takes it this time!"
    end
  end

end  #end of class

binding.pry
