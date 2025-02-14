-- Define a curried function composeFilterMap that takes a filter function, a map function, and a 
-- list. It should first filter the list, then apply the map function to the remaining elements. Use this 
-- function to filter out numbers greater than 5 from the list [3, 7, 2, 8, 4, 6], then square the 
-- remaining numbers. 

composeFilterMap :: (a -> Bool) -> (a -> b) -> [a] -> [b]
composeFilterMap pred mapper = map mapper . filter pred

main :: IO ()
main = do
    let result = map (^2) (filter (<=5) [3, 7, 2, 8, 4, 6])
    print result
