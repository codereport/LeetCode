# code_report Solution
# Video Link:
# Problem Link:

def heightChecker(self, h: List[int]) -> int:
        return sum(a != b for a, b in zip(h, sorted(h)))
