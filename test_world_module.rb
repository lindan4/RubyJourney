require './word_module.rb'
include(WordModule)


sentence = "This was once my time and now it still is"


#Split words
words = WordModule.split_words(sentence)
puts words


#Sort words
sorted_words = WordModule.sort_words(sentence)
puts "\n#{sorted_words}\n"

#Print first word
first_word = WordModule.print_first_word(sentence)
puts "\n#{first_word}\n"

#Print last word
last_word = WordModule.print_last_word(sentence)
puts "\n#{last_word}\n"

#Print first word and last word
WordModule.print_first_and_last(sentence)
puts "\n"

#Print first words and last word from sorted array
WordModule.print_first_and_last_sorted(sentence)
puts "\n"



