fibEffective :: Integer -> Integer

fibonacciHelper acc step desiredNumber
    | step == desiredNumber = fst acc
    | desiredNumber > 0 = fibonacciHelper (snd acc, fst acc + snd acc) (step + 1) desiredNumber
    | desiredNumber < 0 = fibonacciHelper ((snd acc) - (fst acc), fst acc) (step - 1) desiredNumber

fibEffective n   
    | n >= 0 = fibonacciHelper (0, 1) 0 n
    | n < 0 = fibonacciHelper (0, 1) 0 n
