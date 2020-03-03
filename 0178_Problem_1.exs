# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
# Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

defmodule LeetCode do
  def smallerNumbersThanCurrent(nums) do
    (for i <- nums, j <- nums, into: [], do: {i, j})
    |> Enum.map(fn {a, b} -> if (a > b) do 1 else 0 end end)
    |> Enum.chunk_every(length(nums))
    |> Enum.map(fn x -> Enum.sum(x) end)
  end
end
