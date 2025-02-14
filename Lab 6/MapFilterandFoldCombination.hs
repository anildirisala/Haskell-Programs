-- Use filter to get all odd numbers from the list [1, 2, 3, 4, 5, 6], then square each of these 
-- numbers using map, and finally compute the product of the squared numbers using foldl. 

main :: IO ()
main = do
    let result = foldl (\acc x -> acc * x) 1 (map (^2) (filter odd [1, 2, 3, 4, 5, 6]))
    print result