require 'players'
describe Players do
  subject(:bob) { Players.new('Bob') }
  it "Bot should generate random sign" do
    expect(["Rock","Paper","Scissors"]).to include(subject.bot_choice)
  end
end
