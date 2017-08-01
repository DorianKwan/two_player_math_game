class Question
  
  attr_reader :prompt

  def initialize
    @x = Random.rand(20).round
    @y = Random.rand(20).round
    @prompt = "What does #{@x} plus #{@y} equal?"
  end

  def correct_answer? attempt
    attempt == @x + @y
  end

end  
