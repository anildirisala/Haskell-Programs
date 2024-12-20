--Write a function multiplyElements that takes a list of numbers and a multiplier n, and returns a new list where each element is multiplied by n. Use a list comprehension for this task.
multiplyListElements :: [Int] -> Int -> [Int]
multiplyListElements list n =[x*n | x <-list]

main::IO()
main = print(multiplyListElements [1,2,3,4,5] 9)