# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
# Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
# Video Solution:          https://youtu.be/gZLZPrgqw2A

import Integer, only: [is_even: 1]

defmodule LeetCode do
  def findNumbers(collection) do
    collection
    |> Enum.map(&Integer.to_string/1)
    |> Enum.map(&String.length/1)
    |> Enum.filter(&is_even/1)
    |> Enum.count()
  end
end
