-- code_report Solution
-- Video Link:
-- Problem Link:

sliding :: Int -> [a] -> [[a]]
sliding k xs
    | length xs == k = [xs]
    | otherwise      = take k xs : sliding k (tail xs)
          
findOcurrences :: String -> String -> String -> [String]
findOcurrences a b = map last 
                   . filter ((==[a,b]) . take 2) 
                   . sliding 3 
                   . words
