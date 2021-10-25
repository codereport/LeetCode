⍝ https://leetcode.com/contest/weekly-contest-264/problems/number-of-valid-words-in-a-sentence/

countValidWords ← {
    w ← ' '(≠⊆⊢)⍵              ⍝ words
    p ← ((⍳=⊢)∘≢∧∊∘',!.')¨w    ⍝ punctuation
    h ← ((~⍳∘≢∊(1,≢))∧'-'∘=)¨w ⍝ hyphen
    a ← ∊∘(⎕C ⎕A)¨w            ⍝ alpha
    +/∧/¨a+h+p
}
 
⍝ Tests       

      tests ← 'cat and  dog' 'a-b.' 'afad' 'ba-c' 'a! !' '!this  1-s b8d!' 'alice and  bob are playing stone-game10' 'he bought 2 pencils, 3 erasers, and 1  pencil-sharpener.'
      ↑tests
⍝ cat and  dog                                            
⍝ a-b.                                                    
⍝ afad                                                    
⍝ ba-c                                                    
⍝ a! !                                                    
⍝ !this  1-s b8d!                                         
⍝ alice and  bob are playing stone-game10                 
⍝ he bought 2 pencils, 3 erasers, and 1  pencil-sharpener.
      countValidWords ¨ tests
⍝ 3 1 1 1 2 0 5 6
