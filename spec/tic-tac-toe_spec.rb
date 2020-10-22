require '../lib/game_logic.rb'

describe GameLogic do
  describe "#display_board" do
    it "displays the board for the game with numbers (1-9) in each cell" do
      board = GameLogic.new
      expect(board.display_board).to eql([" 1 | 2 | 3 ",
        '-----------',
        " 4 | 5 | 6 ",
        '-----------',
        " 7 | 8 | 9 "])
    end
  end

  describe "#valid_input?" do
    it "returns false if the input is nil" do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(nil)).to eql(false)
    end

    it "checks if the input is an integer" do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(4)).not_to eql(true)
    end

    it "checks if the input is between 1 and 9" do
      val_inp = GameLogic.new
      expect(val_inp.valid_input?(11)).to eql(false) 
    end
  end

  describe "#winning_cases" do
    let(:CASES) {[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]}
    let(:board) {%w['X' 'X' 'X' 'X' 'X' 'X' 'X' 'X' 'X']}
    it "checks the case of XXX" do
      win_case = GameLogic.new
      expect(win_case.winning_cases).to eql('X')
    end
  end

end
