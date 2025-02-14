-- Write a curried function filterAndFold that takes a filtering function, a folding function, and a 
-- list. The function should first filter the list using the filtering function, and then apply the folding 
-- function to compute a result. Use this function to compute the sum of all odd numbers in the list 
-- [1, 2, 3, 4, 5, 6].

filterAndFold :: (a -> Bool) -> (a -> a -> a) -> [a] -> a
filterAndFold pred op = foldl1 op . filter pred

main :: IO ()
main = do
    let result = filterAndFold (\x -> odd x) (+) [1, 2, 3, 4, 5, 6]
    print result
