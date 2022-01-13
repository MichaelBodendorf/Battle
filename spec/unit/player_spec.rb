require 'player'

describe Player do
  subject(:player) { Player.new("Tom") }

  describe '#name' do
    it 'knows it\'s name' do
      expect(player.name).to eq "Tom"
    end
  end
end