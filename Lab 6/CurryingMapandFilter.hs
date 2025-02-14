-- Write a curried function filterAndMap that takes a filtering function, a mapping function, and a 
-- list. It should first filter the list using the filtering function, then apply the mapping function to 
-- the filtered elements. Use this function to filter all even numbers from the list [1, 2, 3, 4, 5, 6], 
-- double them, and return the result. 

main :: IO ()
main = do
    let result = map (*2) (filter even [1, 2, 3, 4, 5, 6])
    print result 
