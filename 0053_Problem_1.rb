# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-53/problems/binary-number-with-alternating-bits/
# Problem Link (Practice): https://leetcode.com/problems/binary-number-with-alternating-bits/

def has_alternating_bits(n)
    n.to_s(2)
     .chars
     .each_cons(2)
     .map { |x, y| x != y }
     .all?
end
