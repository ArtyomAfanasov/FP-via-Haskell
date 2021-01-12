class (Bounded a, Enum a, Eq a) => SafeEnum a where
    ssucc :: a -> a        
    ssucc arg
        | arg == maxBound = minBound
        | otherwise = succ arg

    spred :: a -> a
    spred arg
        | arg == minBound = maxBound
        | otherwise = pred arg
