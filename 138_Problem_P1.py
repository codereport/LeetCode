# code_report Solution
# Video Link: https://leetcode.com/contest/weekly-contest-138/problems/height-checker/
# Problem Link: https://youtu.be/i-KWz4ZHwFk

def heightChecker(self, h: List[int]) -> int:
        return sum(a != b for a, b in zip(h, sorted(h)))
