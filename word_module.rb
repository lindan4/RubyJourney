module WordModule

  def split_words(words)
    return words.split(' ')
  end



  def sort_words(words)
    array_words = split_words(words)

    return array_words.sort
  end

  def print_first_word(words)
    word = words.shift
    return word
  end


  def print_last_word(words)
    word = words.pop
    return word
  end

  def break_and_sort(words)
    return sort_words(split_words(words))
  end


  def print_first_and_last(sentence)
      words = split_words(sentence)
      print_first_word(words)
      print_last_word(words)
  end



end