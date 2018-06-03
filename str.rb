class Str

  #Class names begin with a capital letter


  namn = 'Ell Tay'

  puts "His name is #{namn} and he is learning how to use Ruby."

  puts 'Do you believe that the Tooth Fairy exists? (Yes/No)'

  option = gets

  if (option.include? "Yes") || (option.include? "Yes") || (option.include? "No") || (option.include? "no")

    choice = rand(2)

    if choice == 0
      puts 'The Tooth Fairy does not exist.'
    else
      puts 'She does exist.'
    end
  end




end