class Player
#   #keep track of player's scores and lives
#   #Variables: score, lives
#   #Methods: adds/subtracs scores/lives
#   #To be initialized: Game prompt
#   #User I/O
  def initialize
    @lives = 3
    @answer = 0
  end

  def answer_question
    @answer = gets.chomp.to_i

  end

end
#
# Class Turn
#   #Keeps track of the turns
#   # Calls questions
# end
#
# Class Game
#   #Keeps track of the game flow
#   #Variables: Game loop
#   #To be initialized: user input
# end
def random_number
  rand(1...6)
end

number1 = random_number
number2 = random_number

class Question
  #Outputs the questions
  #Variables: Questions/Answers
  #Mehtods: Compares answers
  #To be initialized: User input

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2

  end

  def question(number1, number2)
    puts "What does #{number1} plus #{number2} equal?"
  end

  def generate_questions
    question(@number1, @number2)
  end

  def compare_answers?(answer)
    answer == @number1 + @number2 ? true : false
  end
end

player1 = Player.new()

first_question = Question.new(number1, number2)
puts first_question.generate_questions
answer = player1.answer_question
puts first_question.compare_answers?(answer)
