def minimumBribes(q)
    # Write your code here

    i = q.length - 1

    localBribe = 0

    while i >= 0
        if q[i] != (i + 1)

            if ((i - 1) >= 0) && (q[i - 1] == (i + 1))
                temp = q[i - 1]
                q[i - 1]  = q[i]
                q[i] = temp

                localBribe = localBribe + 1

            elsif ((i - 2) >= 0) && (q[i - 2] == (i + 1))
                temp = q[i - 2]
                q[i - 2] = q[i - 1]
                q[i -1] = q[i]
                q[i] = temp

                localBribe = localBribe + 2
            else
                puts 'Too chaotic'
                return
            end
        end
        i = i - 1        
    end
    
    if localBribe > 0
        puts localBribe
    end


end


inputArray = [2, 1, 5, 3, 4]
inputArrayTwo = [1, 2, 5, 3, 7, 8, 6, 4]
                #0, 1, 2, 3, 4, 5, 6, 7 


puts minimumBribes(inputArray)

puts minimumBribes(inputArrayTwo)