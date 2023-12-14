class Maze
  def initialize(map_grid, start_position, end_point)
    @map_grid = map_grid
    @start_position = start_position
    @end_point = end_point
  end

  def solve
    solve_maze(@start_position)
    @map_grid
  end

  def solve_maze(position)
    row = position[0]
    column = position[1]

    if [row, column] == @end_point
      return
    end
    self.mark_grid(row, column)

    if can_move(row - 1, column)
      solve_maze([row - 1, column])
    elsif can_move(row, column + 1)
      solve_maze([row, column + 1])
    elsif can_move(row + 1, column)
      solve_maze([row + 1, column])
    elsif can_move(row, column - 1)
      solve_maze([row, column - 1])
    end
  end

  def can_move(row, column)
    row_max_index = @map_grid.length - 1
    column_max_index = @map_grid[0].length - 1
    (row >= 0 && row <= row_max_index) &&
      (column >= 0 && column <= column_max_index) && @map_grid[row][column] == self.white_space

  end

  def mark_grid(row, column)
    if @map_grid[row][column] == self.white_space
      @map_grid[row][column] = self.mark
    end
  end

  def mark
    "x"
  end

  def white_space
    " "
  end
end
