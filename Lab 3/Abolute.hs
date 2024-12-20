-- Basic Data Types
-- Define a function absolute that takes a Float and returns its absolute value.

absolute :: Float -> Float
absolute x
    | x < 0     = -x
    | otherwise = x

main :: IO ()
main = print (absolute (-3.14))
