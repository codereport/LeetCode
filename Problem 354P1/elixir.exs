# Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

defmodule Solution do
  @spec sum_of_squares(nums :: [integer]) :: integer
  def sum_of_squares(nums) do
    nums |> Enum.with_index(1)
         |> Enum.filter(fn {x, i} -> rem(length(nums), i) == 0 end)
         |> Enum.map(fn {x, i} -> x * x end)
         |> Enum.sum()
  end
end
