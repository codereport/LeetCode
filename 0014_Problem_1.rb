# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-14/problems/number-complement/
# Problem Link (Practice): https://leetcode.com/problems/number-complement/

def find_complement(num)
    return num.to_s(2)
              .chars
              .map { |x| 1 - x.to_i }
              .reverse
              .each_with_index 
              .map { |val, i| val * ( 2 ** i) }
              .sum
end
