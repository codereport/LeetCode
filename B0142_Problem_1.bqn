# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b142-1.bqn

# Link: https://leetcode.com/problems/find-the-original-typed-string-i/description/

fn ⇐ •Import "../lib/fun.bqn"

PossibleStringCount  ← +´⌾(-⟜1)·≠¨fn.Group
PossibleStringCount2 ← +´⌾(-⟜1)·(⊑∘⌽˘)fn.Rle
PossibleStringCount3 ← +´⌾(-⟜1)·⥊1↓˘fn.Rle

# Tests
•Show PossibleStringCount "abbcccc" # 5
•Show PossibleStringCount "abcd"    # 1
•Show PossibleStringCount "aaaa"    # 4

•Show PossibleStringCount2 "abbcccc" # 5
•Show PossibleStringCount2 "abcd"    # 1
•Show PossibleStringCount2 "aaaa"    # 4

•Show PossibleStringCount3 "abbcccc" # 5
•Show PossibleStringCount3 "abcd"    # 1
•Show PossibleStringCount3 "aaaa"    # 4
