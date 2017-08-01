class Player

  attr_reader :name, :player_id, :input
  attr_writer :lives

  def initialize name
    @name       = name
    @lives      = 3
  end
  
  def input_answer
    define_method(:input) do
      @input = gets.chomp
    end  
  end

  def remove_life
    define_method(:remove_life) do
      @lives - 1
    end
  end    
end  
      