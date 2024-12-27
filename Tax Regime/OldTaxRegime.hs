-- under the old tax regime tax is calculated based on the following income slabs and applicable rates
--upto 2.5 lakhs no tax
--2.5 lakhs to 5 lakhs 5%
--5 lakhs to 10 lakhs 20%
--above 10 lakhs 30%
--create a haskell program for above content

taxCalculation :: Double -> Double
taxCalculation income
    | income <= 250000 = 0
    | income <= 500000 = (income - 250000) * 0.05
    | income <= 1000000 = 12500 + (income - 500000) * 0.20
    | otherwise = 112500 + (income - 1000000) * 0.30

-- Main function to take input and display tax
main :: IO ()
main = do
    print(taxCalculation 200000)
    print(taxCalculation 350000)
    print(taxCalculation 700000)
    print(taxCalculation 1500000)