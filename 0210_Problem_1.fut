-- Problem Link: https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

def outer_prod op A B =  map (\a -> map (\b -> a `op` b) B) A
def to_i32 b = if b then 1 else 0 

def max_depth x = outer_prod (==) "()" x 
               |> map (map to_i32) 
               |> transpose 
               |> map (foldr (-) 0) 
               |> scan (+) 0 
               |> i32.maximum
