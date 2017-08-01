class Player

  attr_reader :name, :input
  attr_accessor :lives

  def initialize name
    @name       = name.to_s
    @lives      = 3
  end
  
  def answer_input
    @input = gets.chomp.to_i
  end

  def remove_life
    @lives -= 1
  end    
end 
