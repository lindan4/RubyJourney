require './word_module.rb'
include(WordModule)


sentence = "This was once my time and now it still is"


#Split words
words = WordModule.split_words(sentence)
puts words


#Sort words
sorted_words = WordModule.sort_words(sentence)
puts "\n#{sorted_words}"






