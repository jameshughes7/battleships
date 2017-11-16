require_relative 'board'

class Game

  attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

  def move(row, column, player)
    if out_of_bounds?(row, column)
      return "that move is out of bounds"
    elsif space_taken?(row, column)
      return "that space is already taken"
    else
      board.grid[row][column] = player
      board.display_board
    end
  end

  def out_of_bounds?(row, column)
    (row < 0 || row > 10) || (column < 0 || column > 10)
  end

  def space_taken?(row, column)
    board.board_space_taken?(row, column)
  end
end







#   def print_results
#    board_layout = Array.new(10, ".").map{|row| Array.new(10, ".")}
#    row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
#    column_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
#
#     print "\t"
#     print row_label.join("\t")
#     puts
#     board_layout.each_with_index do |row, i|
#       print column_label[i]
#       print "\t"
#       print row.join("\t")
#       puts
#      end
#     end
#
# print_results
