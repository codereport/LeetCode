# Problem Link: https://leetcode.com/contest/weekly-contest-336/problems/count-the-number-of-vowel-strings-in-range/

VowelStrings ← {
  words‿l‿r ← 𝕩
  w ← (1+r-l)↑l↓words
  +´∾{(1⊸↑∧¯1⊸↑)𝕩∊"aeiou"}¨w
}

# Tests
VowelStrings ⟨"are","amy","u"⟩‿0‿2                # 2 
VowelStrings ⟨"hey","aeo","mu","ooo","artro"⟩‿1‿4 # 3
