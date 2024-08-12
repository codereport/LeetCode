# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/410-1.bqn

# Link: https://leetcode.com/problems/snake-in-matrix

# Explicit Solution
FinalPositionOfSnake ← {
    commands 𝕊 n:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    final  ← +´(map⊐commands)⊏deltas
    final⊑n‿n⥊↕×˜n
}

# Tacit Solution
d ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩        # deltas
m ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP" # map

FinalPositionOfSnake2 ← (+´d⊏˜m⊐⊢)⊸⊑⟜((⋈⥊↕∘×)˜)

# Tests
•Show      ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake  2 # 3
•Show ⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake  3 # 1
•Show      ⟨"RIGHT","DOWN"⟩ FinalPositionOfSnake2 2 # 3
•Show ⟨"DOWN","RIGHT","UP"⟩ FinalPositionOfSnake2 3 # 1
