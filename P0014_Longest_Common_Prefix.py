# Problem Link: https://leetcode.com/problems/longest-common-prefix/

from more_itertools import all_equal

def longestCommonPrefix(self, s):
    ans = '' 
    for letters in zip(*s): 
        if all_equal(letters): 
            ans += letters[0] 
        else:
            break 
    return ans 
