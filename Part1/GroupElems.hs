groupElems :: Eq a => [a] -> [[a]]
groupElems lst
    | null lst    = []
    | otherwise   = helper lst
    where
        helper [] = []  
        helper (x : xs) =
            let (start, end) = (span (== x) (x : xs))
            in start : (helper end)
