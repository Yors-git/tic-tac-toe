class GameLogic
  CASES = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ].freeze

  def self.display_board(board)
    [" #{board[0]} | #{board[1]} | #{board[2]} ",
    "-----------",
    " #{board[3]} | #{board[4]} | #{board[5]} ",
    "-----------",
    " #{board[6]} | #{board[7]} | #{board[8]} "]
  end

  def self.valid_input?(input, arr)
    false if (input.nil? || !input.is_a?(Integer) || !(1..9).include?(input)) || (arr[input - 1] == 'X' || arr[input - 1] == 'O')
  end

  def self.winning_cases(arr)
    win = nil
    CASES.each do |pattern|
      board_case = ''
      pattern.each do |i|
        board_case += arr[i].to_s
      end
      case board_case
      when 'XXX'
        win = 'X'
      when 'OOO'
        win = 'O'
      end
    end
    win
  end
end
