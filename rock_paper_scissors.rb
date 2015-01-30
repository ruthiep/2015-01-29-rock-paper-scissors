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
  
  def winner_of_game    
    while @p1_games_won < 3 && @p2_games_won < 3
      make_a_move
      puts @player1.moves
      puts @player2.moves
      if @player1.moves == 1
          if @player2.moves == 2
              puts "Player2 wins! Paper covers rock."
              @p2_games_won += 1
          elsif @player2.moves == 3
              puts "Player1 wins! Rock smashes scissors!"
              @p1_games_won += 1
          else
              puts "Tie. You both picked rock."
          end

      elsif @player1.moves == 2
          if @player2.moves == 1
              puts "Player1 wins! Paper covers rock."
              @p1_games_won += 1
          elsif @player2.moves == 3
              puts "Player2 wins! Scissors cut paper."
              @p2_games_won += 1
          else
              puts "Tie. you both picked paper."
          end

      else
          if @player2.moves == 1
             puts "Player2 wins! Rock smashes scissors."
             @p2_games_won += 1
          elsif @player2.moves == 2
             puts "Player1 wins! Scissors cut paper."
             @p1_games_won += 1
          else
             puts "Tie. You both picked scissors."
          end
      end
    end #end of while
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
    if @p1_games_won == 3
      puts "Nice match! #{@player1.name} wins!"

    elsif @p2_games_won == 3
      puts "#{@player2.name} takes it this time!"
    end
  end

end  #end of class

binding.pry
