require 'pry'

class Player
  
  attr_accessor :name, :games_won
  
  def initialize( name )
    @name = name
    @games_won = 0
    #@moves = []
  
  end

  
  def choose_a_move
    puts "#{name}: would you like: rock, paper or scissors? "
    @moves[move] = gets.chomp.downcase
    
    check = false
    while !check
      if move != "rock" || move != "paper" || move != "scissors" 
          puts "#{name}, we're not playing rock, paper, scissors, lizard, spock here.  Pick a valid choice next time."
      else 
        puts "good job"
        check = true
      end
      #return @moves
    end

  

end

end 

binding.pry