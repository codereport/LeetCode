# Problem Link: https://leetcode.com/contest/weekly-contest-294/problems/percentage-of-letter-in-string/
# Godbolt: https://godbolt.org/z/hqYxsjedz

from math import floor

def percentage_letters(s, c):
    return floor(100 * s.count(c) / len(s))

# Tests
percentage_letters('foobar', 'o') # 33
percentage_letters('jjjj', 'k')   # 0
