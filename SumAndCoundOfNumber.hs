sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
    | x == 0 = (0, 1)
    | otherwise =         
        parseDigit 0 0 (abs x)  
        where
            parseDigit sumOfDigits amountOfDigits remainingDigits
                | remainingDigits == 0 = (sumOfDigits, amountOfDigits)
                | otherwise = 
                    let lastDigit = rem remainingDigits 10
                    in parseDigit (sumOfDigits + lastDigit) (amountOfDigits + 1) (quot remainingDigits 10)
