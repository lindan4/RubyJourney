# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    if (nums.length == 1)
        return nums[0]
    elsif (nums.length == 2)
        if nums[0] > nums[1]
            return nums[1]
        else
            return nums[0]
        end
    else
        mid = nums.length / 2

        arrSplitOne = nums[0...mid]
        arrSplitTwo = nums[mid...nums.length]
        
        minOne = find_min(arrSplitOne)

        minTwo = find_min(arrSplitTwo)

        if minOne > minTwo
            return minTwo
        else
            return minOne
        end
    end    
end


global_min = find_min([4, 5, 6, 7, 1, 2, 3])

puts global_min