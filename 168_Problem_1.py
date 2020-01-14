# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
# Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

def findNumbers(self, nums: List[int]) -> int:
        return len([i for i in nums if len(str(i)) % 2 == 0])
