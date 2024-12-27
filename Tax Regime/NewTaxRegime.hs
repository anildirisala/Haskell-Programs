    -- under the new tax regime there are no exceptions but the income slabs and rates are as follows
    -- upto 2.5 lakhs no tax
    -- 2.5 lakhs to 5 lakhs 5%
    -- 5 lakhs to 7.5 lakhs 10%
    -- 7.5 lakhs to 10 lakhs 15%
    -- 10 lakhs to 12.5 lakhs 20%
    -- 12.5 lakhs to 15 lakhs 25%
    -- above 15 lakhs 30%
    -- you need to implement a program that calculates the income tax based on the income provided 

taxCalculation :: Double -> Double
taxCalculation income
    | income <= 250000 =0
    | income <= 500000 = (income - 250000) * 0.05
    | income <= 750000 = 12500 + (income - 500000) * 0.1
    | income <= 1000000 = 62500 + (income - 750000) * 0.15
    | income <= 1250000 = 175000 + (income - 1000000) * 0.2
    | income <= 1500000 = 425000 + (income - 1250000) * 0.25
    | otherwise = 800000 + (income - 1500000) * 0.3

main :: IO()
main = do
    print(taxCalculation 175000)
    print(taxCalculation 300000)
    print(taxCalculation 550000)
    print(taxCalculation 900000)
    print(taxCalculation 1100000)
    print(taxCalculation 1400000)
    print(taxCalculation 2000000)