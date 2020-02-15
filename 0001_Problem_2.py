# code_report Solution
# Problem Link: https://leetcode.com/problems/first-unique-character-in-a-string/

def firstUniqChar(self, s: str) -> int:
    c = collections.Counter(s)
    for i, l in enumerate(s):
        if c[l] == 1: return i
    return -1
