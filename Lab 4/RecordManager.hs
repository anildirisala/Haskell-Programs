--You are tasked with developing a program to manage and analyze student records. Each student is represented as a tuple (String, Int, [Int]), where the first element is the student’s name (a string), the second is their roll number (an integer), and the third is a list of integers representing their marks in various subjects. Write a recursive function averageMarks to calculate the average of a student's marks. Display all student names and their average marks.
averageMarks :: [Int] -> Double
averageMarks [] = 0
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks)

displayAverages :: [(String, Int, [Int])] -> [(String, Double)]
displayAverages [] = []
displayAverages ((name, _, marks):students) =
    (name, averageMarks marks) : displayAverages students

main :: IO ()
main = do
    let students = [("Alice", 1, [85, 90, 78]),
                    ("Bob", 2, [88, 76, 95]),
                    ("Charlie", 3, [92, 88, 84])]
    let averages = displayAverages students
    mapM_ (\(name, avg) -> putStrLn $ name ++ ": " ++ show avg) averages
