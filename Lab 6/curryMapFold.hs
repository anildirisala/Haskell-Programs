-- Write a curried function applyOp that takes an operation (addition or multiplication) and a list of 
-- numbers, then applies the operation to the list and returns the final result. Use this function to 
-- compute the sum of the squares of all even numbers from the list [1, 2, 3, 4, 5, 6]. You 
-- must first filter out the even numbers, square them, and then compute the sum. 

applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp op = foldl1 op

main :: IO ()
main = do
    let evenSquaresSum = applyOp (+) (map (^2) (filter (\x -> even x) [1, 2, 3, 4, 5, 6]))
    print evenSquaresSum
