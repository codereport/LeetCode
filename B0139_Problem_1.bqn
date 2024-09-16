# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b139-1.bqn

# Link: https://leetcode.com/problems/find-indices-of-stable-mountains

StableMountains  ← 1+·/¯1↓<
StableMountains2 ← /·»<
                 # 1+⍸¯1↓<  Kap Solution

# Tests
•Show  2 StableMountains  [1,2,3,4,5]    # [3,4]
•Show  3 StableMountains  [10,1,10,1,10] # [1,3]
•Show 10 StableMountains  [10,1,10,1,10] # []
•Show  2 StableMountains2 [1,2,3,4,5]    # [3,4]
•Show  3 StableMountains2 [10,1,10,1,10] # [1,3]
•Show 10 StableMountains2 [10,1,10,1,10] # []
