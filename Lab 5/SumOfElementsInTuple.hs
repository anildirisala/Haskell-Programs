--  Pattern Matching with Tuples
-- Matching tuples with simple patterns.
-- Write a function sumTuple :: (Int, Int) -> Int that takes a tuple of two integers and returns the sum of the integers.

sumTuple :: (Int , Int) -> Int
sumTuple (x , y) = x + y

main ::IO()
main = do
    print(sumTuple (3 , 5))
    print(sumTuple (10 , 20))