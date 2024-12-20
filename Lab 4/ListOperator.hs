--Implement a function listZipWith that behaves similarly to zipWith in Haskell. It should take a function and two lists, and return a list by applying the function to corresponding elements from both lists. For example, given the function + and the lists [1, 2, 3] and [4, 5, 6], the result should be [5, 7, 9].

listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] _ = []
listZipWith _ _ [] = []
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys

main ::IO()
main =do
     print(listZipWith (*) [1,2,3,4] [2,3,4,5])
     print(listZipWith (+) [1,2,3,4] [2,3,4,5])