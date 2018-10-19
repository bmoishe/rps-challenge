require 'players'
describe Players do
  it "Bot should generate random sign" do
    expect(["Rock","Paper","Scissors"]).to include(subject.bot_choice)
  end
end
