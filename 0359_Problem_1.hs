-- Problem Link: https://leetcode.com/problems/check-if-a-string-is-an-acronym-of-words/

isAcronym words s = s == map head words

-- Tests
isAcronym ["alice","bob","charlie"] "abc"                   -- True
isAcronym ["an","apple"] "a"                                -- False
isAcronym ["never","gonna","give","up","on","you"] "ngguoy" -- True
