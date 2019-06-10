# code_report Solution
# Video Link:
# Problem Link:

def findOcurrences(self, t: str, f: str, s: str) -> List[str]:
    l = t.split()
    return [c for a, b, c in zip(l, l[1:], l[2:]) if a == f and b == s]
