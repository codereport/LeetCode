# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
# Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

defmodule LeetCode do
  def maxDepth(s) do
    s
    |> String.replace(~r/[^()]/, "")
    |> String.graphemes()
    |> Enum.map(fn c -> if (c == "(") do 1 else -1 end end)
    |> Enum.scan(&(&1 + &2))
    |> Enum.max()
  end
end

# Solution 2 (from Jose Valim)
# https://twitter.com/josevalim/status/1316000995713921025

defmodule LeetCode do
  def maxDepth(s) do
    s
    |> String.to_charlist()
    |> Enum.map(fn ?( ->  1
                   ?) -> -1
                   _  ->  0
                end)
    |> Enum.scan(&+/2)
    |> Enum.max()
  end
end  
