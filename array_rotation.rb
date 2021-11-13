def rotLeft(a, d)
    # Write your code here

    rotatedArray = a.clone


        rotations = (rotatedArray.length > d) ? d : d % n


        subArrPtOne = rotatedArray[0..(rotations - 1)]

        puts "Sub arr one: #{subArrPtOne}"
        subArrPtTwo = rotatedArray[d..rotatedArray.length]

        puts "Sub arr two: #{subArrPtTwo}"

        subConcat = subArrPtTwo.concat(subArrPtOne)

        return subConcat

end


puts rotLeft([1, 2, 3, 4, 5], 4)