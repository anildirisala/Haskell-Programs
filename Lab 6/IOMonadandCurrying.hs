-- Write a program that asks the user for two numbers, then applies a curried function applyOp 
-- (which takes an operation and a list) to either sum or multiply the two numbers based on the 
-- user's input. First, prompt the user to choose an operation (+ or *), then prompt for the two 
-- numbers and return the result of applying the chosen operation. 

applyOp :: (Int -> Int -> Int) -> [Int] -> Int
applyOp op = foldl1 op 

main :: IO ()
main = do
    putStrLn "Choose an operation (+ or *):"
    op <- getLine
    putStrLn "Enter two numbers separated by space:"
    nums <- fmap (map read . words) getLine 
    let result = case op of
            "+" -> applyOp (+) nums
            "*" -> applyOp (*) nums
            _   -> error "Invalid operation"
    print result 
