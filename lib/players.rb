class Players
   # attr_reader :players_choice

  # def initialize
  #   @rps =
  # end

  #
  # def initialize(c = Controller.new)
  # @players_choice = c.session[:choice]
  # end

  def bot_choice
   ["Rock", "Paper", "Scissors"].sample
  end
end
