integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = 
    trapezoidMethod 0 a 0
    where 
        elementarySegment = 1000
        h = (b - a) / elementarySegment
        trapezoidMethod sum x_j step
            | step == 1000 = sum
            | otherwise =
                let 
                    x_jPlus1 = x_j + h
                    addendum = (f x_j + f x_jPlus1) / 2 * (x_jPlus1 - x_j)
                in trapezoidMethod (sum + addendum) (x_jPlus1) (step + 1)
