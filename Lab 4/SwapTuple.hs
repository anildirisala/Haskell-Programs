--Implement a function swapTuple that takes a tuple (a, b) and swaps its elements, i.e., returns the tuple (b, a).

swapTuple :: (Int, Int) -> (Int, Int)
swapTuple (a, b) = (b, a)

main :: IO()
main= print(swapTuple (4,3))