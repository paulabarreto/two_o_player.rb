require_relative './question.rb'
require_relative './player.rb'
require_relative './turn.rb'
# require_relative './game.rb'


def random_number
  rand(1...6)
end

player1 = Player.new(1)
player2 = Player.new(2)
turn = Turn.new

while player1.lives > 0 && player2.lives > 0
  first_question = Question.new(random_number, random_number, player1.name)
  puts first_question.generate_questions
  answer = player1.answer_question
  result = first_question.compare_answers?(answer)
  puts player1.update_life_count(result)
  puts turn.change_turns
  next_question = Question.new(random_number, random_number, player2.name)
  puts next_question.generate_questions
  answer2 = player2.answer_question
  result2 = next_question.compare_answers?(answer2)
  puts player2.update_life_count(result2)
  puts turn.change_turns
end
puts turn.game_over
