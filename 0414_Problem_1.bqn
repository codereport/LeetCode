# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/414-1.bqn

# Link: https://leetcode.com/problems/convert-date-to-binary/

⟨Split, Join⟩ ⇐ •Import "../lib/string.bqn"
⟨Binary⟩      ⇐ •Import "../lib/binary.bqn"

ConvertDateToBinary ← '-'⊸Join·∾´∘•Fmt¨∘Binary∘•BQN¨'-'⊸Split
#                     {1↓⊃,/'-'∘,¨⍕¨10⊥2(⊥⍣¯1)⍎¨'-'(≠⊆⊢)⍵} # Dyalog APL
# Tests
•Show ConvertDateToBinary "2080-02-29" # "100000100000-10-11101"
•Show ConvertDateToBinary "1900-01-01" # "11101101100-1-1"
