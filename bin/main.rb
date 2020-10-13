#!/usr/bin/env ruby
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

game_on = true
until game_on == false
    puts "Player 1 please enter your name"
    player1 = gets.chomp
    puts "Player 2 please enter your name"
    player2 = gets.chomp
    game_board = [1,2,3,4,5,6,7,8,9]
    display_board(game_board)
    count = 0
    while count < 9
        puts "Player 1 select the number (1-9) for your move"
        p1_move = gets.chomp.to_i
        puts "Please enter valid move, number between (1-9)"
        game_board[p1_move-1] = "O"
        count += 1
        display_board(game_board)
        puts "Player 2 select the number (1-9) for your move"
        p2_move = gets.chomp.to_i
        puts "Please enter valid move, number between (1-9)"
        game_board[p2_move-1] = "X"
        count += 1
        display_board(game_board)

        if count == 9
            puts "It's a draw game"
            break
        end
    end
    # puts "#{winner} you won!"
    puts "Play again? press \"Y\" or press any other key to quit"
    input = gets.chomp.upcase
    if input == "Y"
        game_on = true
    end
    break if input != "Y"
end