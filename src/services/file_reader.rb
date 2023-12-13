class FileReader
  def read_file(file_name)
    File.foreach("./../examples/#{file_name}") do |line|
      puts line
    end
  end
end
