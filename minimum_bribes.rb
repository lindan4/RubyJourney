def minimumBribes(q)
    # Write your code here

    minBribes = 0

    i = q.length - 1

    while i >= 0
        if q[i] != (i + 1)

           localBribe = 0


           
           puts q[i]
        #    puts i + 1

            j = i

        #    puts "j: #{j}" 
        #    puts "q.length #{q.length}"

           while (q[j] != (i + 1)) && (j >= 0)
            j = j - 1
            localBribe = localBribe + 1
           end


           


           if (j >= 0) 
            puts q[j]
            if localBribe > 2
                puts 'Too chaotic'
                return
            else
                minBribes = minBribes + localBribe
            end

           end

                  

        #    if q[j] > q[i]
        #     i = j
        #    end
           
        end
        i = i - 1        
    end
    
    if minBribes > 0
        puts minBribes
    end


end


inputArray = [2, 1, 5, 3, 4]
inputArrayTwo = [1, 2, 5, 3, 7, 8, 6, 4]


puts minimumBribes(inputArray)

puts minimumBribes(inputArrayTwo)