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

  attr_accessor :board, :input

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    [" #{@board[0]} | #{@board[1]} | #{@board[2]} ",
     '-----------',
     " #{@board[3]} | #{@board[4]} | #{@board[5]} ",
     '-----------',
     " #{@board[6]} | #{@board[7]} | #{@board[8]} "]
  end

  def valid_input?(input)
    false if (input.nil? || !input.is_a?(Integer) || !(1..9).include?(input)) || (@board[input - 1] == 'X' || @board[input - 1] == 'O')
  end

  def winning_cases
    win = nil
    CASES.each do |pattern|
      board_case = ''
      pattern.each do |i|
        board_case += @board[i].to_s
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

  def tie_case(num)
    true if num == 9
  end
end
