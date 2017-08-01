require './question'

class Game

  attr_reader :p1, :p2, :question, :prompt, :answer
  attr_accessor :current_player, :game_state, :winner

  def initialize(player_one, player_two)
    @p1         = player_one
    @p2         = player_two
    @game_state = true
  end

  def start_game
    while @p1.lives > 0 && @p2.lives > 0
      if @game_state == true 
        @current_player = @p1
      else
        @current_player = @p2
      end
      @question = init_question
      @prompt   = question.prompt
      @answer   = question.answer
      prompt_question
      @game_state = !@game_state
      next_turn
    end
    if @p1.lives > 0
      @winner = @p1
    else
      @winner = @p2
    end
    end_game @winner
  end

  def init_question 
    Question.new
  end
  
  def next_turn
    if @p1.lives > 0 && @p2.lives > 0
      p "#{@p1.name}: #{@p1.lives}/3 vs. #{@p2.name} #{@p2.lives}/3"
      p '----- NEXT TURN -----'
    end
  end

  def prompt_question
    puts "#{@current_player.name} #{@prompt}"
    input = @current_player.answer_input
    check_answer input, @question
  end

  def check_answer input, question
    if input == question.answer
      p "#{@current_player.name} is Correct!"
    else 
      p "Wrong Answer! #{Player.name} loses one life"
      @current_player.remove_life
    end
  end
  
  def end_game player
    p '----- END GAME -----'
    p "#{player.name} wins with a score of #{player.lives}/3"
    p 'Please Play Again!'
  end
end
