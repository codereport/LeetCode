# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
# Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

function countnegatives(grid)
    @pipe grid                |> 
        vec                   |> 
        filter(x -> x < 0, _) |> 
        length
end

# One-liner
function countnegatives(grid)
    @pipe grid |> vec |> filter(x -> x < 0, _) |> length
end

# Updated solution Aug 26, 2022
function countnegatives(grid)
    sum(grid .< 0)
end
