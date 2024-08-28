def getFinalState(nums, k, m):
    for _ in range(k):
        i = nums.index(min(nums))
        nums[i] *= m
    return nums
