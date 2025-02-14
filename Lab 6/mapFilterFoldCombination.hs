-- Write a function that filters out all numbers greater than 10 from the list [5, 12, 9, 20, 15], 
-- doubles each of the remaining numbers, and computes the product of these doubled numbers 
-- using foldl. 

main :: IO ()
main = do
    let result = foldl (*) 1 (map (*2) (filter (<= 10) [5, 12, 9, 20, 15]))
    print result
