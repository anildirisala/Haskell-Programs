-- Pattern Matching on Lists
-- : Use pattern matching on lists to count the number of elements.
-- Write a function countElements :: [a] -> Int that returns the number of elements in a list using pattern matching.

countElements :: [Int] -> Int
countElements [] = 0
countElements (_ : xs) = 1 + countElements xs

main :: IO()
main = do
    print(countElements [])
    print(countElements [1 , 2 , 3 , 4 , 5])