def countingValleys(steps, path)
    # Write your code here

    altitude = 0
    countValleys = 0
    upperLimit = steps < path.length ? path.length : steps


    for i in 0 ... upperLimit
        if path[i] === 'U'
            if (altitude + 1) == 0
                countValleys = countValleys + 1
            end

            altitude = altitude + 1
        end

        if path[i] === 'D'
            altitude = altitude - 1
        end
    end

    return countValleys
end