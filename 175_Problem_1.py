# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
# Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

def checkIfExist(self, arr: List[int]) -> bool:
    return any(2 * i in arr for i in arr if i) or arr.count(0) > 1
