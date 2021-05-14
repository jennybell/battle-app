require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  
describe '#attack' do
  it 'attacks the player and they receive damage' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
  
  describe '#turn_switch' do
    it 'turn switches after attack' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.turn).to eq player_2
    end
  end
end
end