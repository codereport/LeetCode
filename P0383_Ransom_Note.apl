⍝ Problem Link: https://leetcode.com/problems/ransom-note/

randsomNote ← 0∧.≤(-⍨⍥(+/(⎕C⎕A)∘.=,))

⍝ LeetCode Tests

      'a' randsomNote 'b'
0
      'aa' randsomNote 'ab'
0
      'aa' randsomNote 'aba'
1

⍝ Additional Tests

      'thor' randsomNote 'hoekstra'
1
      'hero' randsomNote 'hoekstra'
1
