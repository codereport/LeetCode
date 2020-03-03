// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
// Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

let smallerNumbersThanCurrent nums = 
    nums 
    |> List.allPairs(nums)
    |> List.map(fun (a, b) -> if a > b then  1 else 0)
    |> List.chunkBySize(nums.Length)
    |> List.map List.sum
    
