#!/usr/bin/env ruby
puts "Player 1 please enter your name"
player1 = gets.chomp
puts "Player 2 please enter your name"
player2 = gets.chomp

board = [1,2,3,4,5,6,7,8,9]

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

puts "Player 1 select the number (1-9) for your move"
p1_move = gets.chomp.to_i
board[p1_move-1] = "O"
puts "Player 2 select the number (1-9) for your move"
p2_move = gets.chomp.to_i
board[p2_move-1] = "X"


# puts "#{winner} you won!"
puts "Play again? press \"Y\" or press any other key to quit"
input = gets.chomp.upcase
