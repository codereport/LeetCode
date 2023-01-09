# Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
# LeetCode Benchmark: 404 ms

def maximum_count(nums) do
  max(nums |> Enum.count(&(&1 > 0)),
      nums |> Enum.count(&(&1 < 0)))
end
