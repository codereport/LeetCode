# Solution 1
def getFinalState(nums, k, m):
    for _ in range(k):
        i, lo = 0, nums[0]
        for j, e in enumerate(nums):
            if e < lo:
                i, lo = j, e
        nums[i] *= m
    return nums


# Solution 2
def getFinalState(nums, k, m):
    for _ in range(k):
        i = nums.index(min(nums))
        nums[i] *= m
    return nums
