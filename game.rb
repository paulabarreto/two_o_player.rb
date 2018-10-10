require_relative './question.rb'
require_relative './player.rb'
require_relative './turn.rb'

def random_number
  rand(1...6)
end

class Game
#   #Keeps track of the game flow
#   #Variables: Game loop
#   #To be initialized: user input
  player1 = Player.new(1)
  player2 = Player.new(2)
  turn = Turn.new(player1)
  turn2 = Turn.new(player2)

  while player1.lives > 0 && player2.lives > 0
    first_question = Question.new(random_number, random_number, turn.player.name)
    puts first_question.generate_questions
    answer = player1.answer_question
    result = first_question.compare_answers?(answer)
    puts player1.update_life_count(result)
    if player1.lives > 0
      puts turn2.change_turns
      next_question = Question.new(random_number, random_number, player2.name)
      puts next_question.generate_questions
      answer2 = player2.answer_question
      result2 = next_question.compare_answers?(answer2)
      puts player2.update_life_count(result2)
    end
  end
  puts turn.game_over


end
