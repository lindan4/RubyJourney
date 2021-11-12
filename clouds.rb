#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'jumpingOnClouds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY c as parameter.
#

def jumpingOnClouds(c)
    # Write your code here
    minSteps = 0

    i = 0

    while i < c.length
        if c[i + 1] == 0 || c[i + 2] == 0

            if (c[i + 1] == 1 && c[i + 2] == 0) || (c[i + 1] == 0 && c[i + 2] == 0) 
                i = i + 2
            else
                i = i + 1
            end 
            minSteps = minSteps + 1

        else
            puts 'what'
            break
        end
    end

    return minSteps

end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

c = gets.rstrip.split.map(&:to_i)

if (c[0] == 0 && c[c.length - 1] == 0 && 2 <= n && n <= 100)
    result = jumpingOnClouds c
else
    result = 0
end

puts result

# fptr.write result
# fptr.write "\n"

# fptr.close()