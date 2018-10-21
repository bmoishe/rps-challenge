require 'game'
require './app'

describe Game do
  subject(:game) { Game.new("Bob", "Dave")}
  let (:choice1) { double :controller,:choice => "Scissors"}
  let(:choice2) { double :controller, :choice => "Rock"}
  let(:choice3) { double :controller, :choice => "Paper"}

  it 'Dave wins' do
    subject.player1.choice2
    subject.player2.choice1
    expect(subject.winner).to eq "#{subject.player2.pname} wins"
  end

  it 'Bob wins' do
    subject.player1.choice1
    subject.player2.choice3
    expect(subject.winner).to eq "#{subject.player1.pname} wins"
  end

  it 'Draw' do
    subject.player1.choice1
    subject.player2.choice1
    expect(subject.winner).to eq "Draw"
  end
end
