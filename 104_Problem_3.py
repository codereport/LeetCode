# code_report Solution
# https://youtu.be/-IPzqZeVmr4

def wordSubsets(self, A, B):
    v = collections.Counter()
    for w in B:
        for c, n in collections.Counter(w).items():
            v[c] = max(v[c], n)
    res = []
    for w in A:
        t = collections.Counter(w)
        if all(t[c] >= v[c] for c in v):
            res.append(w)
    return res
