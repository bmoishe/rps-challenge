class Players
  attr_reader :pname
  attr_accessor :choice
  @pchoice = nil

  def initialize(pname)
    @pname = pname
  end

  def bot_choice
   ["Rock", "Paper", "Scissors"].sample
  end
end
