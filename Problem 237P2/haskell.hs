
import Data.List (sort)

-- Explicit
maxIceCream coins costs 
    = sum 
    . map (fromEnum . (coins >=)) 
    . scanl1 (+) 
    . sort 
    $ costs

-- Tacit :-0 (thanks to https://pointfree.io/)
maxIceCream 
    = (sum .) 
    . (. (scanl1 (+) . sort)) 
    . map 
    . (fromEnum .) 
    . (>=)
