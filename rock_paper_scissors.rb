#require 'pry'
require_relative 'Player'

class RockPaperScissors
  
  attr_accessor :player1, :player2
  
  # Public: Inititalize
  # Sets initial values for CheckSplitter object
  #
  # Params:
  # + total : integer, total price (in dollars, rounded up)
  # + tip : integer, percentage to tip, e.g. 15% => 15
  # + party_size : how many people in your party?
  #
  # Returns:
  # nil
  #
  # State Changes:
  # Sets the three primary attribute variables 
  
  def initialize 
    @p1_games_won = 0
    @p2_games_won = 0
  end
  
  def start_game 
    
    puts "Let's play a game!\n Player 1, what is your name?"
    name = gets.chomp.capitalize
    @player1 = Player.new(name) 
    
    puts "Ok. \nPlayer 2, what is your name?"
    name = gets.chomp.capitalize
    @player2 = Player.new(name)
    puts "Ok, #{@player1.name} and #{@player2.name}, Good luck!!"
   
  end

  def make_a_move
    @player1.choose_a_move
    @player2.choose_a_move
  end
  # def determine_winner_of_match
#
#     while @p1_games_won < 3 && @p2_games_won < 3
#       if player1 == 1
#           if player2 == 2
#               puts "Player2 wins! Paper covers rock."
#               @p2_games_won += 1
#           elsif player2 == 3
#               puts "Player1 wins! Rock smashes scissors!"
#               @p1_games_won += 1
#           else
#               puts "Tie. You both picked rock."
#           end
#
#       elsif player1 == 2
#           if player2 == 1
#               puts "Player1 wins! Paper covers rock."
#               @p1_games_won += 1
#           elsif player2 == 3
#               puts "Player2 wins! Scissors cut paper."
#               @p2_games_won += 1
#           else
#               puts "Tie. you both picked paper."
#           end
#
#       else
#           if player2 == 1
#              puts "Player2 wins! Rock smashes scissors."
#              @p2_games_won += 1
#           elsif player2 == 2
#              puts "Player1 wins! Scissors cut paper."
#              @p1_games_won += 1
#           else
#              puts "Tie. You both picked scissors."
#           end
#       end
#     end #end of while
#   end  #end of method

#   def winner_of_game
#     determine_winner_of_match
#     if p1_games_won == 3
#       puts "Nice match! #{player1} wins!"
#
#     elsif p2_games_won == 3
#       puts "#{player2} takes it this time!"
#
#   end


end  #end of class

#binding.pry


