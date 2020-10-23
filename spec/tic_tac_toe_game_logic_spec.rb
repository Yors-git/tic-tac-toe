require_relative '../lib/game_logic'

describe GameLogic do
  let(:test_game) { GameLogic.new }
  describe '#display_board' do
    it 'displays the board for the game with numbers (1-9) in each cell' do
      expect(test_game.display_board).to eql([' 1 | 2 | 3 ',
                                              '-----------',
                                              ' 4 | 5 | 6 ',
                                              '-----------',
                                              ' 7 | 8 | 9 '])
    end
  end

  describe '#valid_input?' do
    it 'returns false if the input is nil' do
      expect(test_game.valid_input?(nil)).to eql(false)
    end

    it 'checks if the input is an integer' do
      expect(test_game.valid_input?(4)).not_to eql(true)
    end

    it 'checks if the input is between 1 and 9' do
      expect(test_game.valid_input?(11)).to eql(false)
    end
  end

  describe '#winning_cases' do
    it 'checks the case of XXX' do
      test_game.board[3] = 'X'
      test_game.board[4] = 'X'
      test_game.board[5] = 'X'
      test_game.display_board
      test_game.winning_cases
      expect(test_game.winning_cases).to eql('X')
    end

    it 'checks the case of not winning move' do
      test_game.board[3] = 'O'
      test_game.board[4] = 'X'
      test_game.board[5] = 'X'
      test_game.display_board
      test_game.winning_cases
      expect(test_game.winning_cases).to eql(nil)
    end
  end

  describe '#tie_case' do
    it 'checks the case of a tie' do
      expect(test_game.tie_case(9)).to eql(true)
    end
  end
end
