# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    ## Brute force
    # for i in 0...nums.length
    #     for j in i+1...nums.length
    #         if nums[i] === nums[j]
    #             return true
    #         end
    #     end
    # end
    
    # return false

    # Optimal solution

    visited_values= Hash.new
    for i in 0...nums.length
        if visited_values[nums[i]]
            return true
        end
        visited_values[nums[i]] = true
        
    end
    
    return false

    
end

# [1, 2, 3, 1]