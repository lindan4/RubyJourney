
  def print_all_file(file)
    puts File.read(file)
  end


  #rewind???
  def rewind(file)
    file.seek(0)
  end



  #????
  def print_a_line(line_count, f)

    puts "#{line_count}: #{f.gets.chomp}"
  end


  puts "Enter file name:"

  file_name = gets.chomp

  print_all_file(file_name)





