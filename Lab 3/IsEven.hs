-- Basic Data Types
-- Write a function isEven that takes an Int and returns a Boolean value indicating whether the number is even.
isEven :: Int -> Bool
isEven n = even n
main :: IO ()
main = print (isEven 100)  
   
