-- Pattern Matching with Lists (Head and Tail)
-- Objective: Use head-tail pattern matching on lists.
-- Write a function firstElement :: [a] -> String that returns:
-- • "Empty list" if the list is empty.
-- • "First element is X" if the list has at least one element, where X is the first element.

firstElement :: [Int] -> String 
firstElement [] = "Empty List"
firstElement (x : xs) = "First Element is "++ show x

main :: IO()
main = do
    print(firstElement [])
    print(firstElement [1 ,2 ,3 ,4 ,5])