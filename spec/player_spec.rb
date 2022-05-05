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
end
