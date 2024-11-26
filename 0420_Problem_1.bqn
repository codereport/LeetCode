# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/420-1.bqn

# Link: https://leetcode.com/problems/find-the-sequence-of-strings-appeared-on-the-screen

StringSequence ← ⥊¨·∾·{(⊢´𝕨)⊸∾¨𝕩}`·'a'⊸+∘↕¨-⟜'`'

# Tests
•Show StringSequence "abc" # ["a","aa","ab","aba","abb","abc"]
•Show StringSequence "he"  # ["a","b","c","d","e","f","g","h","ha","hb","hc","hd","he"]
