# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-212/problems/slowest-key/
# Problem Link (Practice): https://leetcode.com/problems/slowest-key/

def slowest_key(t, k)
    return t.unshift(0)
            .each_cons(2)
            .map{|a, b| b - a}
            .zip(k.chars)
            .max[1]
end
