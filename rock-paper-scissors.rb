
#require 'pry'

class RockPaperScissors
  
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
    @player1 = {}
    @player2 = {}
    @p1_games_won = 0
    @p2_games_won = 0
  end
  
  def start_game 
    
    puts "Let's play a game!\n Player 1, what is your name?"
    player1[name] = gets.chomp.capitalize
    player1[name] = Player.new (name)
    puts "Good luck!!"
  end

  def determine_winner
      
    while p1_games_won < 3 && p2_games_won < 3
      if player1 == 1 
          if player2 == 2
              puts "Player2 wins! Paper covers rock."
              p2_games_won += 1
          elsif player2 == 3
              puts "Player1 wins! Rock smashes scissors!"
              p1_games_won += 1
          else 
              puts "Tie. You both picked rock."
          end
        
      elsif player1 == 2
          if player2 == 1
              puts "Player1 wins! Paper covers rock."
              p1_games_won += 1
          elsif player2 == 3
              puts "Player2 wins! Scissors cut paper."
              p2_games_won += 1
          else
              puts "Tie. you both picked paper."
          end      

      else  
          if player2 == 1
             puts "Player2 wins! Rock smashes scissors."
             p2 += 1
          elsif player2 == 2
             puts "Player1 wins! Scissors cut paper."
             p1_games_won += 1
          else 
             puts "Tie. You both picked scissors."
          end
      end
      return p1, p2
    end #end of while

  end  #end of method

end  #end of class

class Player ( name )
  @name = name
  @games_won = 0
  @moves = [move] 
  
  
  def choose_a_move
    puts "#{name}: would you like: 1-rock, 2-paper or 3-scissors? " 
    move = gets.chomp.to_i
    
    while move !+ 1 || move !+ 2 || move != 3
      puts "#{name}, we're not playing rock, paper, scissors, lizard, spock here.  Pick a valid choice next time."
    end
    return move
  
  end

      
  if p1_games_won == 3
      puts "Nice match! Player1 wins!"

  elsif p2_games_won == 3
      puts "Player2 takes it this time!"

  end
  
end