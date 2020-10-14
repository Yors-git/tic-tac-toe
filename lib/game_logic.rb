module GameLogic 
    def display_board(board)
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end
    def winning_cases

    end
    def valid_input(input)
        if input == nil || input.is_a?(Integer) == false || (1..9).include?(input)== false
            false
        end
    end
    def repeat_move(move, arr)
        if arr[move].is_a?(String)
            'Space already taken, please select another move'
        end
    end
end
