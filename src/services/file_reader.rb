class FileReader
  def read_file(file_name)
    IO.readlines(file_name, chomp: true)
  end
end
