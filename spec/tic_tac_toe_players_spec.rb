require_relative '../lib/players'

describe Player do
  let(:name) { 'John' }
  let(:short_name) { 'Jo' }
  let(:player) { Player.new(name) }

  describe '#initialize' do
    it 'checks if the correct name is passed to @name' do
      expect(player.name).to eql('John')
    end
  end

  describe '#player1_mark' do
    it 'checks that "O" is asigned to mark' do
      expect(player.player1_mark).to eql('O')
    end
  end

  describe '#player2_mark' do
    it 'checks that "X" is asigned to mark' do
      expect(player.player2_mark).to eql('X')
    end
  end

  describe '#valid_name?' do
    it 'checks that the input is valid' do
      player.name = short_name
      expect(player.valid_name?).to be(false)
    end
  end
end
