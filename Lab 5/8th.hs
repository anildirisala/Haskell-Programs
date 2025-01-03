-- Pattern Matching for List Recursion
-- Objective: Use recursion to work with lists.
-- Write a function listLength :: [a] -> Int that calculates the length of a list using recursion and pattern matching.
--Example Input:
--listLength [1, 2, 3] -- Expected Output: 3
--listLength [] -- Expected Output: 0

listLength :: [Int] -> Int
listLength [] = 0
listLength (_ : xs) = 1 + listLength xs

main :: IO()
main = do
    print(listLength [])
    print(listLength [1 , 2 , 3 , 4 , 5])