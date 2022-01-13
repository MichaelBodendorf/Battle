require 'player'

describe Player do
  subject(:player) { Player.new("Tom") }
  subject(:player_2) { Player.new("John") }

  describe '#name' do
    it 'knows it\'s name' do
      expect(player.name).to eq "Tom"
    end

  end

  describe '#hit_points' do
    it 'player has HP' do
      expect(player.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#reduce_hitpoints' do
    it 'reduce hitpoints from player 2' do
      player.reduce_hitpoints
      expect(player.hit_points).to eq 90
    end
  end

  describe '#attack' do
    it 'lets a player attack another player' do
      expect(player_2).to receive(:reduce_hitpoints)
      player.attack(player_2)
    end
  end

end