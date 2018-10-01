


  def print_all_file(file)
    puts File.read(file)
  end


  #rewind???
  def rewind(file)
    file.seek(0)
  end



  #????
  def print_a_line(line_count, f)
    #file_opening = File.open(f, "r")
    #
    # First character disappears
    puts " #{line_count}. #{f.gets.chomp}"
  end


  puts "Enter file name:"

  file_name = gets.chomp

  this_file = open(file_name)


  puts "Content of whole file: "
  print_all_file(this_file)


  puts "\nOnly one line from the file"

  current_line = 1


  print_a_line(current_line, this_file)

  current_line = current_line + 1

  print_a_line(current_line, this_file)


  puts "Back to the first line"

  rewind(this_file)

  current_line = current_line - 1

  print_a_line(current_line, this_file)











