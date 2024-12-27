-- under the old tax regime tax is calculated based on the following income slabs and applicable rates
--upto 2.5 lakhs no tax
--2.5 lakhs to 5 lakhs 5%
--5 lakhs to 10 lakhs 20%
--above 10 lakhs 30%

    -- under the new tax regime there are no exceptions but the income slabs and rates are as follows
    -- upto 2.5 lakhs no tax
    -- 2.5 lakhs to 5 lakhs 5%
    -- 5 lakhs to 7.5 lakhs 10%
    -- 7.5 lakhs to 10 lakhs 15%
    -- 10 lakhs to 12.5 lakhs 20%
    -- 12.5 lakhs to 15 lakhs 25%
    -- above 15 lakhs 30%
    -- you need to implement a program that calculates the income tax based on the income provided and allows the user to choose either the old or the new tax regime for the calculation

oldTaxCalculation :: Double -> Double
oldTaxCalculation income
    | income <= 250000 = 0
    | income <= 500000 = (income - 250000) * 0.05
    | income <= 1000000 = 12500 + (income - 500000) * 0.20
    | otherwise = 112500 + (income - 1000000) * 0.30

newTaxCalculation :: Double -> Double
newTaxCalculation income
    | income <= 250000 =0
    | income <= 500000 = (income - 250000) * 0.05
    | income <= 750000 = 12500 + (income - 500000) * 0.1
    | income <= 1000000 = 62500 + (income - 750000) * 0.15
    | income <= 1250000 = 175000 + (income - 1000000) * 0.2
    | income <= 1500000 = 425000 + (income - 1250000) * 0.25
    | otherwise = 800000 + (income - 1500000) * 0.3

main :: IO()
main = do
    putStrLn "Enter Your Income: "
    incomeStr <- getLine
    let income = read incomeStr :: Double
    putStrLn "Select which regime you want to use for tax calculation:\n 1. Old Tax regime\n 2. New Tax Regime"
    xStr <- getLine
    let x = read xStr :: Int
    if x == 1
        then print (oldTaxCalculation income)
        else if x == 2
            then print (newTaxCalculation income)
            else putStrLn "Invalid selection. Please choose 1 or 2."