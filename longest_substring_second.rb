def length_of_longest_substring(s)
  #Length of longest substring without repeating characters


  s_array = s.split('')

  long_sub =  ""
  current_sub = ""

  j = 0
  i = 0

  while j < s_array.length
    curr_char = s_array[j]
    #long_sub = (current_sub.length > long_sub.length) ? current_sub : long_sub


    puts "[#{i}, #{j}]"
    puts "Curr char: #{curr_char}"

    if current_sub.include? (curr_char)
      #pos = pos + 1
      #long_sub = (current_sub.length > long_sub.length) ? current_sub : long_sub
      #

      rel_ind = index_of_relative(s, curr_char, i, j)
      #puts "Rel ind: #{rel_ind}"
      i = rel_ind + 1

      j = i
      
      current_sub = s_array[i]

      #s_array = s_array.slice(i, s_array.length)

      #i = 0
      #j = 0




    else
      current_sub += curr_char
    end

    #j += 1




    #puts "Longest sub: #{long_sub} Current sub: #{current_sub}"


    puts long_sub.to_s

    long_sub = (current_sub.length > long_sub.length) ? current_sub : long_sub
  end


  #puts "#{long_sub}"

  return long_sub.length
end

def index_of_relative(string_ele, character, i, j)
  split_string = string_ele.split('')

  while i < j

    if split_string[i].eql?(character)
      return i
    end

    i += 1

  end
  return -1

end


my_string = "ohomm"

val = length_of_longest_substring(my_string)

puts "#{val}"
