# code_report Solution
# https://youtu.be/WJ4NtyrakT0

def numSpecialEquivGroups(self, A):
    s = set ()
    for w in A:
        even = ''.join(sorted(w[0::2]))
        odd  = ''.join(sorted(w[1::2]))
        s.add (odd + even)
    return len (s)
