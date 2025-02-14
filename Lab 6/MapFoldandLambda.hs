-- Write a function that uses map to convert a list of strings to their lengths, then uses foldl to 
-- compute the sum of all string lengths in the list ["hello", "world", "haskell"]. 

main :: IO ()
main = do
    let result = foldl (\acc x -> acc + x) 0 (map (\str -> length str) ["hello", "world", "haskell"])
    print result 
