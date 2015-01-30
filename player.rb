require 'pry'

class Player
  
  attr_accessor :name, :games_won
  
  def initialize( name )
    @name = name
    @games_won = 0
    #@moves = []
  
  end
  
  
  def choose_a_move
    puts "#{name}: would you like: 1-rock, 2-paper or 3-scissors? "
    move = gets.chomp.to_i

    # while...need to change this so it isn't an infinite loop
       move != 1 || move != 2 || move != 3
      puts "#{name}, we're not playing rock, paper, scissors, lizard, spock here.  Pick a valid choice next time."
      #end
    #return move
    
  end

  #
  # if p1_games_won == 3
  #     puts "Nice match! Player1 wins!"
  #
  # elsif p2_games_won == 3
  #     puts "Player2 takes it this time!"
  #
  # end

end


binding.pry