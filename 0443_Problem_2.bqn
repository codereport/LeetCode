# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/443-2.bqn

# Link: https://leetcode.com/problems/minimum-cost-to-reach-every-position

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

LongestPalindrome  ← { ⌈´(⌽⊸≡×≠)¨⥊𝕩∾⌜○(⍷·∾·↓¨↑)𝕨 } # Explicit
LongestPalindrome2 ← ⌈´·(⌽⊸≡×≠)¨·⥊∾⌜˜○(∾·↓¨↑)    # Tacit

# Tests
u.UnitTest (    "a" LongestPalindrome  "a"    ) ≡ 2
u.UnitTest (  "def" LongestPalindrome  "abc"  ) ≡ 1
u.UnitTest ( "aaaa" LongestPalindrome  "b"    ) ≡ 4
u.UnitTest ("ecdba" LongestPalindrome  "abcde") ≡ 5
u.UnitTest (    "a" LongestPalindrome2 "a"    ) ≡ 2
u.UnitTest (  "def" LongestPalindrome2 "abc"  ) ≡ 1
u.UnitTest ( "aaaa" LongestPalindrome2 "b"    ) ≡ 4
u.UnitTest ("ecdba" LongestPalindrome2 "abcde") ≡ 5