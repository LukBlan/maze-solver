require_relative './../services/file_reader'

class ConsoleInterface
  def initialize
    @maze = nil
  end

  def init(file_reader, maze_factory)
    file_name = self.get_file_name
    @maze = maze_factory.build(file_reader, file_name)
    solved_maze = @maze.solve
  end

  def get_file_name
    print("File name: ")
    file_name = gets.chomp
    "./../maze-files/#{file_name}.txt"
  end
end
