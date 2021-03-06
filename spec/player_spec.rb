require 'player'

describe Player do
  subject(:dennis) { Player.new('Dennis')}
  subject(:pat) { Player.new('Pat')}
  
  describe '#name' do
    it 'should return own name' do
      expect(dennis.name).to eq 'Dennis'
    end
  end

  describe '#lives' do
    it 'returns players lives' do
      expect(dennis.lives).to eq described_class::DEFAULT_LIVES
    end
  end

 

end
