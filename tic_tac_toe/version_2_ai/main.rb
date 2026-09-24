require_relative 'game'

puts "Welcome to Tic Tac Toe vs the Computer!"
puts "Please enter your mark (e.g., X):"
player_mark = gets.chomp
computer_mark = player_mark == 'O' ? 'X' : 'O'
puts "The computer will play as #{computer_mark}."

game = Game.new(player_mark, computer_mark)
puts game.play
