getElement :: Integer -> Integer

getElement number
        | number < 0 = error "Negative number is not available!"
        | number == 0 = a_0
        | number == 1 = a_1
        | number == 2 = a_2
        | otherwise = helper (a_0, a_1, a_2) initialStep number
    where
        a_0 = 1
        a_1 = 2
        a_2 = 3 
        initialStep = 2
        helper acc step number
            | step == number = 
                let (trash, trash2, result) = acc
                in result
            | otherwise = 
                let 
                    (a_kMinus3, a_kMinus2, a_kMinus1) = acc
                    a_k = a_kMinus1 + a_kMinus2 - 2 * a_kMinus3
                in                     
                    helper (a_kMinus2, a_kMinus1, a_k) (step + 1) number
