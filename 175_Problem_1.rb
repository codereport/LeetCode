# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
# Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

def check_if_exist(arr)
    return arr.count(0) > 1 ||
           arr.product(arr)
              .map { |x, y| x == 2 * y && x != 0 }
              .any?
end
