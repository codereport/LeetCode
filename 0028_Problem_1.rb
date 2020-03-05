# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-28/problems/student-attendance-record-i/
# Problem Link (Practice): https://leetcode.com/problems/student-attendance-record-i/

# Solution 1
def check_record(s)
    return s.count("A") <= 1 &&
           s.chars
            .each_cons(3)
            .map(&:join)
            .count("LLL") == 0
end

# Solution 2
def check_record(s)
    !(s.count("A") > 1 || s.include?("LLL"))
end
