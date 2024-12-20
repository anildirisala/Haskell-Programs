-- Function Composition
--  Define a function transformList that takes a list of integers and first squares each element and then adds 10 to each squared element. Use function composition to implement this.

square :: Int -> Int
square x = x * x

add10 :: Int -> Int
add10 x = x + 10

transformList :: [Int] -> [Int]
transformList = map (add10 . square)

main :: IO ()
main = print (transformList [1, 2, 3])