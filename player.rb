class Player

  attr_reader :name, :player_id, :input
  attr_writer :lives

  def initialize name
    @name       = name
    @lives      = 3
  end
  
  def answer_input
    @input = gets.chomp.to_i
  end

  def remove_life
    @lives -= 1
  end    
end 
