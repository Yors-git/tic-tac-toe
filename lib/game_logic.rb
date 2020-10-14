# frozen_string_literal: true

module GameLogic
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
    cases = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]

    board_case = ' '
    cases.each do |pattern|
      pattern.each do |i|
        board_case += arr[i].to_s
      end
    end
    if board_case.include? 'XXX'
      'X'
    elsif board_case.include? 'OOO'
      'O'
    end
  end
end
