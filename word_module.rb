module WordModule

  def split_words(words)
    return words.split(' ')
  end



  def sort_words(words)
    array_words = split_words(words)

    return array_words.sort
  end

  def print_first_word(words)
    word_array = split_words(words)
    return word_array.first
  end

  def print_last_word(words)
    word_array = split_words(words)
    return word_array.last
  end


  def break_and_sort(words)
    return sort_words(words)
  end


  def print_first_and_last(sentence)
      puts print_first_word(sentence)
      puts print_last_word(sentence)
  end

  def print_first_and_last_sorted(sentence)
    words = break_and_sort(sentence)
    puts words.first
    puts words.last
  end



end