# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/426-2.bqn

# Link: https://leetcode.com/problems/smallest-number-with-all-set-bits

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

GetLargestOutlier ← {
    pairs ← ⍷⌽¨⊸∾(∾⋈fn._Tri↕≠𝕩)⊏¨<𝕩
    ⌈´(+´𝕩)⊸((⊑∘⊢=-⟜(+´))×⊢´∘⊢)¨pairs
}

# Tests
u.UnitTest (GetLargestOutlier 2‿3‿5‿10)      ≡ 10
u.UnitTest (GetLargestOutlier ¯2‿¯1‿¯3‿¯6‿4) ≡ 4
u.UnitTest (GetLargestOutlier 1‿1‿1‿1‿1‿5‿5) ≡ 5
