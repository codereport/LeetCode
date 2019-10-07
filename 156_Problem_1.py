# code_report Solution
# Problem Link: https://leetcode.com/contest/weekly-contest-156/problems/unique-number-of-occurrences/

def group(l): 
    return [list(x) for _, x in itertools.groupby(l)]

def freq(l):  
    return [len(x) for x in group(sorted(l))]

def uniqueOccurrences(self, arr: List[int]) -> bool:
    return max(freq(freq(arr))) <= 1
