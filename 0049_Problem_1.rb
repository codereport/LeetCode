# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-49/problems/longest-continuous-increasing-subsequence/
# Problem Link (Practice): https://leetcode.com/problems/longest-continuous-increasing-subsequence/

def find_length_of_lcis(nums)
    if nums.empty? then return 0 end
    return nums.chunk_while( &:< )
               .map( &:length )
               .max
end
