-- Simple Pattern Matching with Integers
-- Objective: Basic pattern matching with integers.
-- Write a function isZero :: Int -> String that:
--  Returns "Zero" if the number is 0.
--  Returns "Not Zero" if the number is anything other than 0.

isZero :: Int -> String
isZero x
    | x ==0 ="Zero"
    | otherwise = "Not Zero"

main :: IO()
main = do
    print(isZero 0)
    print(isZero 6)