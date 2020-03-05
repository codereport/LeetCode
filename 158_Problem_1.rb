# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-158/problems/split-a-string-in-balanced-strings/
# Problem Link (Practice): https://leetcode.com/problems/split-a-string-in-balanced-strings/

def balanced_string_split(s)
    return s.chars
            .map { |c| c == 'R' ? 1 : -1 }
            .inject([]){ |acc, x| acc << acc.last.to_i + x }
            .count(0)
end
