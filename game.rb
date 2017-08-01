class Game

  def initialize(player_one, player_two)
    @p1         = player_one
    @p2         = player_two
    @is_p1 = true
  end

  def start_game
    while @p1.is_alive? && @p2.is_alive?
      @current_player = @is_p1 ? @p1 : @p2
      @question = Question.new
      @prompt   = @question.prompt
      prompt_question
      @is_p1 = !@is_p1
      next_turn
    end
    @p1.is_alive? ? @winner = @p1 : @winner = @p2
    end_game @winner
  end
 
  def next_turn
    if @p1.lives > 0 && @p2.lives > 0
      p "#{@p1.name}: #{@p1.lives}/3 vs. #{@p2.name} #{@p2.lives}/3"
      p '----- NEXT TURN -----'
    end
  end

  def prompt_question
    puts "#{@current_player.name} #{@prompt}"
    input = gets.chomp.to_i
    check_answer input, @question
  end

  def check_answer input, question
    if question.correct_answer? input
      p "#{@current_player.name} is Correct!"
    else 
      p "Wrong Answer! #{@current_player.name} loses one life"
      @current_player.remove_life
    end
  end
  
  def end_game winning_player
    p '----- END GAME -----'
    p "#{winning_player.name} wins with a score of #{winning_player.lives}/3"
    p 'Please Play Again!'
  end
end
