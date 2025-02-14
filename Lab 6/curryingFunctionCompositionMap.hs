-- Write a curried function compose that takes two functions and returns their composition. Use this 
-- function to compose the following operations: multiply a number by 2, and then subtract 3 from 
-- the result. Apply this composed function to each element in the list [1, 2, 3, 4]. 

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)

main :: IO ()
main = do
    let result = map (\x -> (*2) (subtract 3 x)) [1, 2, 3, 4]
    print result
