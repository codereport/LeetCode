# Problem Link: https://leetcode.com/contest/weekly-contest-283/problems/cells-in-a-range-on-an-excel-sheet/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=Q2VsbHNJblJhbmdlIOKGkCB7CiAgIGHigL944oC/Y+KAv2LigL95IOKGkCDwnZWpCiAgIFIg4oaQIHvwnZWpL8uc4oio4p+cKOKJoGAp8J2VqeKIivCdlah9ICMgcmFuZ2UKICAgbCDihpAgYeKAv2IgUiAnQScr4oaVMjYgICMgbGV0dGVycwogICBuIOKGkCB44oC/eSBSICcwJyvihpUxMCAgIyBudW1iZXJzCiAgIOKlimziiL7ijJxuCn0KCiMgVGVzdHMKQ2VsbHNJblJhbmdlICJLMTpMMiIgIyDin6ggIksxIiAiSzIiICJMMSIgIkwyIiDin6kKQ2VsbHNJblJhbmdlICJBMTpGMSIgIyDin6ggIkExIiAiQjEiICJDMSIgIkQxIiAiRTEiICJGMSIg4p+pCkNlbGxzSW5SYW5nZSAiSzE6TTMiICMg4p+oICJLMSIgIksyIiAiSzMiICJMMSIgIkwyIiAiTDMiICJNMSIgIk0yIiAiTTMiIOKfqQ==

CellsInRange ← {
   a‿x‿c‿b‿y ← 𝕩
   R ← {𝕩/˜∨⟜(≠`)𝕩∊𝕨} # range
   l ← a‿b R 'A'+↕26  # letters
   n ← x‿y R '0'+↕10  # numbers
   ⥊l∾⌜n
}

# Tests
CellsInRange "K1:L2" # ⟨ "K1" "K2" "L1" "L2" ⟩
CellsInRange "A1:F1" # ⟨ "A1" "B1" "C1" "D1" "E1" "F1" ⟩
CellsInRange "K1:M3" # ⟨ "K1" "K2" "K3" "L1" "L2" "L3" "M1" "M2" "M3" ⟩
