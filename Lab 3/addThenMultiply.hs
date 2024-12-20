-- Function Composition
-- Write a function addThenMultiply that first adds two integers and then multiplies the result by another integer. Use function composition to define this.

addThenMultiply :: Int -> Int -> Int -> Int
addThenMultiply x y z = ( x + y ) * z

main :: IO()
main = print(addThenMultiply 2 3 10)