require 'player'

describe Player do
  subject(:slava) {Player.new('Slava') }
  subject(:tom) {Player.new('Tom') }

  describe '#name' do
    it 'returns the name' do
      expect(slava.name).to eq 'Slava'
      expect(tom.name).to eq 'Tom'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(slava.hit_points).to eq described_class::DEFAULT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(tom).to receive(:receive_damage)
      slava.attack(tom)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player points' do
      expect { slava.receive_damage }.to change {slava.hit_points}.by(-10)
    end
  end
end
