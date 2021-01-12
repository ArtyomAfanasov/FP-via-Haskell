avg :: Int -> Int -> Int -> Double
avg a b c = 
    let 
        convA = fromIntegral a :: Double
        convB = fromIntegral b :: Double
        convC = fromIntegral c :: Double
    in
        (convA + convB + convC) / 3 


