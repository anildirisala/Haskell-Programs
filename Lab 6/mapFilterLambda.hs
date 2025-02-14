-- Write a function that filters out all numbers greater than 10 from the list [5, 12, 9, 20, 15], 
-- then squares the remaining numbers and returns the sum of these squares. Use map and filter 
-- together, and apply the required transformations. 

main :: IO ()
main = do
    let result = sum (map (^2) (filter (\x -> x <= 10) [5, 12, 9, 20, 15]))
    print result
