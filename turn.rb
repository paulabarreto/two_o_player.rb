class Turn
  #   #Keeps track of the turns
  #   # Calls questions

  attr_accessor :player

  def initialize(player)
    @player = player
  end

  def change_turns
    puts "----- NEW TURN -----"
    
  end

  def game_over
    puts "----- GAME OVER -----"
  end

end
