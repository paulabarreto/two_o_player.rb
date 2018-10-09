class Player

#   #keep track of player's scores and lives
#   #Variables: score, lives
#   #Methods: adds/subtracs scores/lives
#   #To be initialized: Game prompt
#   #User I/O
attr_accessor :name
attr_accessor :lives


  def initialize(name)
    @lives = 3
    @answer = 0
    @name = name
  end

  def answer_question
    @answer = gets.chomp.to_i
  end

  def update_life_count(result)
    @lives += result
    puts "P#{name}: #{@lives}/3"
  end

end
