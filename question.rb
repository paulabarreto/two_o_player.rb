
class Question
  #Outputs the questions
  #Variables: Questions/Answers
  #Mehtods: Compares answers
  #To be initialized: User input

  def initialize(number1, number2, player)
    @number1 = number1
    @number2 = number2
    @player = player

  end

  def question
    puts "Player #{@player}:  What does #{@number1} plus #{@number2} equal?"
  end

  def generate_questions
    question
  end

  def compare_answers?(answer)
    result = answer == @number1 + @number2 ? true : false
    if result
      result = 0
      puts "YES! You are correct!"
    else
      puts "Seriously? No!"
      result = -1
    end
    result
  end
end
