# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/410-1.bqn

# Link: https://leetcode.com/problems/snake-in-matrix

FinalPositionOfSnake ← {
    n 𝕊 commands:
    deltas ← ⟨0‿1,0‿¯1,1‿0,¯1‿0⟩
    map    ← "RIGHT"‿"LEFT"‿"DOWN"‿"UP"
    final  ← +´(map⊐commands)⊏deltas
    final⊑n‿n⥊↕×˜n
}

FinalPositionOfSnake2 ← (⋈⥊↕∘×)˜⊸(⊑˜)⟜(+´⟨0‿1,0‿¯1,1‿0,¯1‿0⟩⊏˜"RIGHT"‿"LEFT"‿"DOWN"‿"UP"⊐⊢)

# Tests
•Show 2 FinalPositionOfSnake  ⟨"RIGHT","DOWN"⟩      # 3
•Show 3 FinalPositionOfSnake  ⟨"DOWN","RIGHT","UP"⟩ # 1
•Show 2 FinalPositionOfSnake2 ⟨"RIGHT","DOWN"⟩      # 3
•Show 3 FinalPositionOfSnake2 ⟨"DOWN","RIGHT","UP"⟩ # 1
