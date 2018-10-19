require 'players'
describe Players do
  it "Bot should generate random sign" do
    expect(["Rock","Paper","Scissor"]).to include(subject.bot_choice)
  end
end
