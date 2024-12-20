-- Basic Data Types
-- Define a function sumIntegers that takes two Int values and returns their sum.

sumIntegers :: Int -> Int -> Int
sumIntegers x y = x + y

main :: IO()
main = print(sumIntegers 5 6)