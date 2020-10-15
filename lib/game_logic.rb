# rubocop: disable Style/Documentation, Style/GuardClause, Layout/LineLength, Metrics/MethodLength
# frozen_string_literal: true

module GameLogic
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

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def valid_input(input, arr)
    if (input.nil? || input.is_a?(Integer) == false || (1..9).include?(input) == false) || (arr[input - 1] == 'X' || arr[input - 1] == 'O')
      false
    end
  end

  def winning_cases(arr)
    win = nil
    CASES.each do |pattern|
        board_case = ""
      pattern.each do |i|
        board_case += arr[i].to_s
      end
      if board_case =='XXX'
        win = 'X'
      elsif board_case == 'OOO'
        win = 'O'
      end
    end
    return win
  end
end
# rubocop: enable Style/Documentation, Style/GuardClause, Layout/LineLength, Metrics/MethodLength
