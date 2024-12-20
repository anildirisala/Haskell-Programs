-- List Operations
-- Write a function filterEven that takes a list of integers and returns a list containing only the even numbers.

filterEven :: [Int] -> [Int]
filterEven [] = []
filterEven (x:xs)
    | x `mod` 2 == 0 = x : filterEven xs
    | otherwise      = filterEven xs

main :: IO ()
main = print (filterEven [15, 21, 36, 74, 154, 69])
