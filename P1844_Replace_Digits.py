# Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

def replaceDigits(s):
  return s[0] + ''.join(chr(ord(l) + int(r)) if l.isalpha() else r for l, r in zip(s, s[1:]))
