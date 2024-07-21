# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/407-1.bqn

# Link: https://leetcode.com/problems/number-of-bit-changes-to-make-two-integers-equal/description/

⟨Binary⟩ ⇐ •Import "../lib/binary.bqn"

MinChanges ← {
    a‿b ← 𝕩 ⋈○Binary 𝕨
    n ← a⌈○≠b
    d ← a-○(n⊸↑⌾⌽)b
    {⊑1∊𝕩?¯1;+´-𝕩}d
}

# Tests
•Show 13 MinChanges 4  # 2
•Show 21 MinChanges 21 # 0
•Show 14 MinChanges 13 # -1
