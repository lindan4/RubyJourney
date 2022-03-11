# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    indexArr = []
    for i in (0...nums.length)
        diff = target - nums[i]
        # if nums[i] == diff

        # else

        # end
        if nums.include? (diff)
            numIndex = nums.find_index(diff)
            if numIndex != i
                return [i, numIndex]
            end
        end

        # if (indexArr.length == 2)
        #     if (nums[indexArr[0]]  + nums[indexArr[1]] == target)
        #         return indexArr
        #     else
        #         indexArr = indexArr.shift
        #     end
        # end
    end

    return []
    
end

puts two_sum([3, 2, 4], 6)