class Maze
  def initialize(map_grid, start_position, end_point)
    @map_grid = map_grid
    @start_position = start_position
    @end_point = end_point
  end


  def mark
    "x"
  end
end
