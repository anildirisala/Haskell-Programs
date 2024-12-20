--Write a function filterEven that filters out all even numbers from a list of integers using the filter function.

filterEven :: [Int] -> [Int]
filterEven list = filter odd list

main ::IO()
main = do
    print(filterEven [1,2,3,4,5,6])
    print(filterEven [10,11,12,31,4112])