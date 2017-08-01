class Question
  
  attr_reader :question, :answer, :x, :y

  def initialize
    @prompt = make_question
    @answer   = @x + @y
  end
  
  def make_question
    @x = Random.rand(20).round
    @y = Random.rand(20).round
    question = "What does #{x} plus #{y} equal?"
  end  
end  
