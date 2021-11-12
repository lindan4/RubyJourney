#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'repeatedString' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. STRING s
#  2. LONG_INTEGER n
#

def repeatedString(s, n)
    # Write your code here
    numOfA = 0
    index = 0
    
    if s.length == 1 && s[0] == 'a'
        return n
    elsif s.length == 1 && s[0] != 'a'
        return 0
        
    else
        firstRoundUpperLimit = n < s.length ? n : s.length
        
        for i in 0 ... firstRoundUpperLimit
            if s[i] === 'a'
                numOfA = numOfA + 1
            end
        end

        if (numOfA > 0 && n > s.length) 
            repeatingOccurrences = (n / s.length) - 1
            remainingOccurrences = n % s.length



            numOfA = numOfA + (numOfA * repeatingOccurrences)

            for j in 0 ... remainingOccurrences
                if s[j] === 'a'
                    numOfA = numOfA + 1
                end
            end
        end

        
    end
    return numOfA
end



