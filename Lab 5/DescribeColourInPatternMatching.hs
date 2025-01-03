-- Pattern Matching on a Custom Data Type
-- Define a simple custom data type and pattern match on it.
-- Define a data type Color to represent basic colors:
-- data Color = Red | Green | Blue
-- Write a function describeColor :: Color -> String that:
-- • Returns "This is Red" if the color is Red.
-- • Returns "This is Green" if the color is Green.
-- • Returns "This is Blue" if the color is Blue.
-- Example Input:
-- describeColor Red -- Expected Output: "This is Red"
-- describeColor Blue -- Expected Output: "This is Blue"

data Color = Red | Blue | Green

describeColor :: Color -> String
describeColor Red ="This is Red"
describeColor Green ="This is Green"
describeColor Blue ="This is Blue"

main :: IO()
main = do
    print(describeColor Red)
    print(describeColor Green)
    print(describeColor Blue)