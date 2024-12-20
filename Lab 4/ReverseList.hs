--Write a recursive function reverseList that takes a list of elements and returns the list in reverse order. For example, given [1, 2, 3], the output should be [3, 2, 1].

reverseList :: [Int] -> [Int]
reverseList [] =[]
reverseList (x:xs)=reverseList xs ++[x]

main ::IO()
main = print(reverseList [1,2,3,4,5])