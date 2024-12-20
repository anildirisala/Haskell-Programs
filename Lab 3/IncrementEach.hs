-- Basic Functions
-- Define a function incrementEach that takes a list of integers and returns a new list where each element is incremented by 1.
incrementEach :: [Int] -> [Int]
incrementEach = map succ

main :: IO()
main = print(incrementEach [13, 34, 16,47])