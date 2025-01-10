-- https://play.haskell.org/saved/od4xTsf8

import Data.List (tails)
-- import Data.List.HT (every)
-- import Data.List.Predicate (allUnique)
import Data.Set (fromList)
-- import Data.List.Utils (countElem)

every n xs   = [x | (x, i) <- zip xs [0..], i `mod` n == 0]
allUnique xs = length xs == length (fromList xs)
countElem x  = length . filter (== x)
chunksOf n   = takeWhile (not . null) . map (take n) . iterate (drop n)

minOps = countElem False 
       . map allUnique 
       . every 3 
       . tails

minOps2 = countElem False 
        . map allUnique 
        . scanr1 (++) 
        . chunksOf 3

main :: IO ()
main = do
  print $ minOps  [1,2,3,4,2,3,3,5,7] -- 2
  print $ minOps  [4,5,6,4,4]         -- 2
  print $ minOps  [6,7,8,9]           -- 0
  print $ minOps2 [1,2,3,4,2,3,3,5,7] -- 2
  print $ minOps2 [4,5,6,4,4]         -- 2
  print $ minOps2 [6,7,8,9]           -- 0