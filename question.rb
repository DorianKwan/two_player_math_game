class Question
  
  attr_reader :question, :answer, :x, :y

  def initialize
    @question = make_question
    @answer   = question_answer
  end
  
  def make_question
    @x = Random.rand(20).round
    @y = Random.rand(20).round
    question = "What does #{x} plus #{y} equal?"
  end  

  def question_answer
    @x + @y
  end
end  
