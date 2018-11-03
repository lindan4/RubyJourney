def find_median_sorted_arrays(nums1, nums2)

  puts "nums1: #{nums1.to_s} nums2: #{nums2.to_s}"


  if nums1.length > nums2.length
    temp = nums1
    nums1 = nums2
    nums2 = temp
  end

  imin = 0
  jmin = 0

  imax = nums1.length
  jmax = nums2.length


  while imin <= imax
    i = (imin + imax) / 2
    j = ((nums1.length + nums2.length + 1) / 2) - i

    if nums2[j - 1] > nums1[i] && i < imax
      imin = i + 1
    elsif nums1[i - 1] > nums2[j] && i > imin
      imax = i - 1
    else
      #Max left

      max_left = 0

      if i == 0
        max_left = nums2[j - 1]
      elsif j == 0
        max_left = nums1[i - 1]
      else
        max_left = (nums1[i - 1] > nums2[j - 1]) ? nums1[i - 1] : nums2[j - 1]
      end

      if ((nums1.length + nums2.length) % 2) == 1
        return max_left
      end

      #Min right
      min_right = 0

      if i == nums1.length
        min_right = nums2[j]
      elsif j = nums2.length
        min_right = nums1[i]
      else
        min_right = (nums1[i] < nums2[j]) ? nums1[i] : nums2[j]
      end

      return (max_left + min_right) / 2.0
    end

  end


end




a = [2, 5, 6]
b = [3, 4, 7]


ans = find_median_sorted_arrays(a, b)

puts ans.to_s