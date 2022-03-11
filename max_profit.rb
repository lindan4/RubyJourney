# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    max_prof = 0
    i = 0
    j = 1
    
    while j < prices.length
        local_profit = prices[j] - prices[i]
        if local_profit > 0
            if max_prof < local_profit
                max_prof = local_profit
            end
        else
            i = j            
        end
        j = j + 1
    end

    return max_prof

end