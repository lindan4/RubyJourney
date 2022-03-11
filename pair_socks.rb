#!/bin/ruby

require 'json'
require 'stringio'

def sockMerchant(n, arn)
    if (1 <= n  && n <= 100)
        sockArr = arn

        sockCountArr = Array.new(101, 0)

        i = 0

        while i < n
            sockCountArr[sockArr[i]] = sockCountArr[sockArr[i]] + 1
            i = i + 1
        end

        sockCountArrDiv = sockCountArr.map{|a| a / 2}

        pairs = 0

        sockCountArrDiv.each{|a| pairs = pairs + a}



        return pairs
    else
        return 0
    end
end

fptr = File.read("./ps_test_case.txt").split("\n")


n = fptr[0].to_i

ar = fptr[1].rstrip.split(' ').map(&:to_i)
puts ar


result = sockMerchant n, ar

puts result

