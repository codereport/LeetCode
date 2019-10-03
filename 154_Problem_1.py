// code_report

def maxNumberOfBalloons(self, t: str) -> int:
    return min(t.count(a) // b for a, b in zip('balon', [1,1,2,2,1]))
