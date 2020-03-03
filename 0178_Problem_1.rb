# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
# Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

def smaller_numbers_than_current(nums)
    return nums.product(nums)
               .map { |x, y| x > y ? 1 : 0 }
               .each_slice(nums.length)
               .map { |l| l.sum }
               .to_a
end
