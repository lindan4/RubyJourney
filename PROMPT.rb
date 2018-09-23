class PROMPT

  user_name = ARGV.first

  prompt = ">"

  puts "Hello there #{user_name}!"

  puts "So how was your day?", prompt

  mood_of_day = $stdin.gets.chomp

  puts "Did anything special happen today?", prompt

  any_event = $stdin.gets.chomp

  puts """ You said \"#{mood_of_day}\" and \"#{any_event}\" """




end