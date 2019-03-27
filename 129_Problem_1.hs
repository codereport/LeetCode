-- code_report Solution
-- Problem Link: https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/

groupBySumGteN :: Int -> [Int] -> [[Int]]
groupBySumGteN n = foldr step [[]]
    where step e ([]:t) = [e] : t
          step e acc
            | e == 0 || sum (head acc) /= n = (e : head acc) : (tail acc)
            | otherwise = [e] : acc

canThreePartsEqualSum :: [Int] -> Bool
canThreePartsEqualSum xs = 3 == length (groupBySumGteN n xs)
    where n = div (sum xs) 3
