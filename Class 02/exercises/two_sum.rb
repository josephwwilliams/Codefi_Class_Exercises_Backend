def two_sum(nums, target)
  nums.each_with_index do |num, idx|
    num_2 = target - num
    if nums.index(num_2) && nums.index(num_2) != idx
      return [idx, nums.index(num_2)]
    end
  end
end

puts two_sum([2,7,11,15], 9)