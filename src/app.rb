require_relative './ui/console_interface'
require_relative './services/file_reader'
require_relative './domain/maze_factory'

file_reader = FileReader.new
maze_factory = MazeFactory.new

console_interface = ConsoleInterface.new
console_interface.init(file_reader, maze_factory)
