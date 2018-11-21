

# @param {String} s
# @return {String}


def longest_palindrome(s)
  #Naive approach



  memo = Array.new(s.length) {Array.new(s.length)}
  #existing_palindromes = Hash.new


  i = 0
  j = 0

  imax = 0
  jmax = 0

  while i < s.length
    while j < s.length

      if s[i] == s[j]
        r = i
        t = j

        while r <= t
          if memo[r][t] == true
            puts "Found history and we know that thet substring is a palindrome"
          elsif memo[r][t] == false
            puts "Found history and we know that thet substring is a palindrome"
            break
          else
            if s[r] != s[t]
              break
            end
          end
          r += 1
          t -= 1
        end

        if r < t
          memo[i][j] = false
        else
          memo[i][j] = true

          if ((jmax - imax + 1) != (j - i + 1))
            imax = ((jmax - imax + 1) <= (j - i + 1)) ? i : imax
            jmax = ((jmax - imax + 1) <= (j - i + 1)) ? j : jmax
          end

        end
      else
        memo[i][j] = false
      end
      j += 1
    end
    i += 1
    j = i
  end

  return s[imax...(jmax + 1)]
end


def print_two_dimension_array(two_array)
  for i in 0 ... two_array.length
    for j in 0 ... two_array[i].length
      if two_array[i][j].to_s.empty?
        print "nil "
      else
        print "#{two_array[i][j].to_s} "
      end
    end
    print "\n"
  end
end


#Check if palindrome exists between range
def is_palindrome(s, i, j)
  if i >= j
    return true
  else
    if s[i] == s[j]
      return is_palindrome(s, i + 1, j - 1)
    else
      return false
    end
  end
end

#test_two_dimension = Array.new(10) {Array.new(10)}
#test_two_dimension[1][2] = false


mem = longest_palindrome("ararstara")


puts mem.to_s


# Failing test case = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"
