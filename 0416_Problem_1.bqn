# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/416-1.bqn

# Link: https://leetcode.com/problems/report-spam-message

IsSpam ← 2≤·+´∊

# Tests
•Show                  ⟨"world","hello"⟩ IsSpam ⟨"hello","world","leetcode"⟩  # 1
•Show ⟨"world","programming","leetcode"⟩ IsSpam ⟨"hello","programming","fun"⟩ # 0
