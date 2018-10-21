require './app'
class Game

  attr_accessor :player1, :player2

  def initialize(p1name, p2name)
    @player1 =  Players.new(p1name)
    @player2 =  Players.new(p2name)
  end

  def winner

    if player1.choice == "Paper" && player2.choice = "Rock"
    	return "#{player1.pname} wins"
    end

    if player1.choice = "Scissors" && player2.choice = "Paper"
    	return "#{player1.pname} wins"
    end

    if player1.choice = "Rock" && player2.choice = "Scissors"
      return "#{player1.pname} wins"
    end

    if player2.choice = "Paper" && player1.choice = "Rock"
      return "#{player2.pname} wins"
    end

    if player2.choice = "Scissors" && player1.choice = "Paper"

    	return "#{player2.pname} wins"
    end

    if player2.choice = "Rock" && player1.choice = "Scissors"

      return "#{player2.pname} wins"
    end

    if player1.choice == player2.choice
      return "Draw"
    end

  end
end
