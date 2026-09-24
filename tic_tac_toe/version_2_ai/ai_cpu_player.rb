require_relative 'board'

class ComputerPlayer
  attr_reader :mark

  def initialize(mark_value, board)
    @mark = mark_value
    @board = board
  end

  # Pick a random empty position on the board
  def get_position
    puts "Computer is thinking..."
    sleep(1)
    open_positions = []
    (0..2).each do |row|
      (0..2).each do |col|
        open_positions << [row, col] if @board.empty?([row, col])
      end
    end
    pos = open_positions.sample
    puts "Computer (#{@mark}) plays #{pos[0]} #{pos[1]}"
    pos
  end
end
