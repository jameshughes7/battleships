class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(10) { Array.new(10,nil) }
  end

  def display_board
    @grid.each { |row| puts row.to_s }
  end

  def board_space_taken?(row,column)
    if @grid[row][column] == nil
      false
    else
      true
    end
  end

end
