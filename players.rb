class Player

  attr_reader :name, :player_id
  attr_writer :lives

  initialize(name)
    @name       = name
    @player_id  = Random.rand(100)
    @lives      = 3
  end
  
  def input_answer
    define_method(:input) do
      input
    end  
  end

  def remove_life
    define_method(:remove_life) do
      @lives - 1
    end
  end    
end  

      