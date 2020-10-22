require_relative '../lib/game_logic'

describe GameLogic do
  describe '#display_board' do
    it 'displays the board for the game with numbers (1-9) in each cell' do
      board = GameLogic.new
      expect(board.display_board).to eql([' 1 | 2 | 3 ',
                                          '-----------',
                                          ' 4 | 5 | 6 ',
                                          '-----------',
                                          ' 7 | 8 | 9 '])
    end
  end

  describe '#valid_input?' do
    it 'returns false if the input is nil' do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(nil)).to eql(false)
    end

    it 'checks if the input is an integer' do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(4)).not_to eql(true)
    end

    it 'checks if the input is between 1 and 9' do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(11)).to eql(false)
    end
  end

  describe '#winning_cases' do
    it 'checks the case of XXX' do
      win_case = GameLogic.new
      win_case.board[3] = 'X'
      win_case.board[4] = 'X'
      win_case.board[5] = 'X'
      puts win_case.display_board
      puts win_case.winning_cases
      expect(win_case.winning_cases).to eql('X')
    end

    it 'checks the case of not winning move' do
      win_case = GameLogic.new
      win_case.board[3] = 'O'
      win_case.board[4] = 'X'
      win_case.board[5] = 'X'
      puts win_case.display_board
      puts win_case.winning_cases
      expect(win_case.winning_cases).to eql(nil)
    end
  end

  describe '#tie_case' do
    it 'checks the case of a tie' do
      tie_case = GameLogic.new
      expect(tie_case.tie_case(9)).to eql(true)
    end
  end
  
end
