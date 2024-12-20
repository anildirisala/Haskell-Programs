-- List Operations
-- Define a function sumList that takes a list of integers and returns the sum of all the elements in the list.

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

main :: IO ()
main = print (sumList [91, 28, 13, 64])
