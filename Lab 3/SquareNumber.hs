-- Basic Functions
-- Write a function square that takes an integer and returns its square.

square :: Int -> Int
square x = x*x

main :: IO()
main = print(square 13)