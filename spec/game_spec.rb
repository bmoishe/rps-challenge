require 'game'


describe Game do
  subject(:game) { described_class.new }
  let (:players) {double :players, :bot_choice => "Scissors"}
  let(:app) { double :controller, :choice1 => "Rock"}

    it 'Player wins' do
      expect(subject.winner).to eq true
    end
end

describe Game do
  subject(:game) { described_class.new }
  let (:players) {double :players, :bot_choice => "Rock"}
  let(:app) { double :controller, :choice1 => "Scissors"}

    it 'Player loses' do
      expect(subject.winner).to eq false
    end
end
#
# describe Game do
#   subject(:game) { described_class.new }
#   let (:players) {double :players, :bot_choice => "Rock"}
#   let(:app) { double :controller, :choice1 => "Rock"}
#
#     it 'Player loses' do
#       expect(subject.winner).to eq nil
#     end
# end

# require 'players'
# describe Game do
#     let (:players) {double :Players, :bot_choice => "Scissors"
#     let (:controller) {double :Controller, :choice => "Rock"
#   it "Player 1 should win with Rock if Bot has Scissors" do
#
#     expect(["Rock","Paper","Scissor"]).to include(subject.bot_choice)
#   end
# end
