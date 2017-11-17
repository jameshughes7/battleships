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

  def place_ship_horizontally(row,column,value)
    board.grid[row][column] = value
    board.grid[row + 1][column] = value
    board.grid[row + 2][column] = value
    board.grid
    board.display_board
  end

  def place_ship_vertically(row,column,value)
    board.grid[row][column] = value
    board.grid[row][column + 1] = value
    board.grid[row][column + 2] = value
    board.grid
    board.display_board
  end

end
