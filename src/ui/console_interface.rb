require_relative './../services/file_reader'

class ConsoleInterface
  def init
    file_reader = FileReader.new
    puts("File name: ")
    file_name = gets.chomp
    file_reader.read_file(file_name)
  end
end
