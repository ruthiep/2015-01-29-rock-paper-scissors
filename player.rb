
class Player
  
  attr_accessor :name, :games_won, :moves
  
  def initialize( name )
    @name = name
    @games_won = 0
    @moves = 0
  
  end

  
  def choose_a_move
    puts "#{name}: would you like: 1 = rock, 2 = paper, or 3 = scissors? "
    @moves = gets.chomp.to_i
    
    check = false
    while check == false do 
      if @moves == 1 || @moves == 2 || @moves == 3
          puts "good job"
          check = true
      else 
        puts "#{name}, we're not playing rock, paper, scissors, lizard, spock here.  Pick a valid choice next time."
        
      end #end of if else
      
    end  #end of while
    return @moves
  end #end of method

end #end of class
