# Problem Link: https://leetcode.com/problems/number-of-employees-who-met-the-target/

def numberOfEmployeesWhoMetTarget(hours: List[int], target: int) -> int:
    return sum(h >= target for h in hours)
