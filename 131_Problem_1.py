# code_report Solution
# Video Link: https://youtu.be/ekdNNn3vOqQ
# Problem Link: https://leetcode.com/contest/weekly-contest-131/problems/remove-outermost-parentheses/

# Solution 1

def group(S):
	t, a, l = 0, 0, []
    for i in range(len(S)):
        t = t + 1 if S[i] == '(' else t - 1
        if t == 0:
            l.append(S[a:i+1])
            a = i + 1
    return l

def removeOuterParentheses(S: str) -> str:
    return ''.join(sub[1:-1] for sub in group(S))

# Solution 2

def group(S: str) -> str:
    a = [1 if i == '(' else -1 for i in S]    
    b = [0] + [i+1 for i, j in enumerate(itertools.accumulate(a)) if j == 0]
    return [S[i:j] for i, j in zip(b[:-1], b[1:])]

def removeOuterParentheses(S: str) -> str:
    return ''.join(sub[1:-1] for sub in group(S))
