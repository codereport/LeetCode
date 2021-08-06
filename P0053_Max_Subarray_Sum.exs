# Problem Link: https://leetcode.com/problems/maximum-subarray/

def max_sub_array(nums) do
  nums
  |> Enum.scan(&(max(&1 + &2, &1)))
  |> Enum.max()
end
