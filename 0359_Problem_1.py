# Problem Link: https://leetcode.com/problems/check-if-a-string-is-an-acronym-of-words/solutions/
# ChatGPT Solutions: https://chat.openai.com/share/32e5954a-446e-42d1-9a22-b5fb6997a25f

def isAcronym(words: List[str], s: str) -> bool:
    return s == ''.join(w[0] for w in words)
