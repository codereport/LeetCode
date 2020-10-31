# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
# Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

using Pipe

function maxdepth(s)
    @pipe s                            |> 
        collect                        |>
        filter(x -> x in "()", _)      |>
        map(x -> x == '(' ? 1 : -1, _) |>
        cumsum                         |>
        maximum
end
