require_relative './maze'

class MazeFactory
  START_POINT = "S"
  END_POINT = "E"

  def initialize
    @start_point = nil
    @end_point = nil
  end

  def build(file_reader, file_name)
    file_lines = file_reader.read_file(file_name)
    maze_grid = generate_grid(file_lines)
    Maze.new(maze_grid, @start_point, @end_point)
  end

  def generate_grid(file_lines)
    rows = file_lines.length
    grid = Array.new(rows) { Array.new }

    file_lines.each_with_index do |row, row_index|
      row.each_char do |column|
        if column.upcase == START_POINT
          column_index = row.index(column)
          @start_point = [row_index, column_index]
        end

        if column.upcase == END_POINT
          column_index = row.index(column)
          @end_point = [row_index, column_index]
        end

        grid[row_index] << column
      end
    end

    grid
  end

  def get_element_in_grid(maze_grid)
  end
end
