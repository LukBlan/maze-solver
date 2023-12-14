require_relative './../services/file_reader'

class ConsoleInterface
  def initialize
    @maze = nil
  end

  def init(file_reader, maze_factory)
    file_name = self.get_file_name
    @maze = maze_factory.build(file_reader, file_name)
    solved_maze = @maze.solve
    print_maze(solved_maze)
  end

  def get_file_name
    print("File name: ")
    file_name = gets.chomp
    "./../maze-files/#{file_name}.txt"
  end

  def print_maze(solved_maze)
    solved_maze.each do |row|
      row.each do |column|
        print column
      end

      puts
    end
  end
end
