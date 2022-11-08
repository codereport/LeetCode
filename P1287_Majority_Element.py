# Problem Link: https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array

def findSpecialInteger(self, arr: List[int]) -> int:
    return max(map(lambda t: t[::-1], Counter(arr).items()))[1]
