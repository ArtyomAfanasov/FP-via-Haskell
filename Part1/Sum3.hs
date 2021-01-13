import Data.List

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 a b c = sum2 c $ sum2 a b

sum2 :: Num a => [a] -> [a] -> [a]
sum2 a b
    | null a && null b  = []
    | null a            = b
    | null b            = a
    | otherwise         = helper a b []
    where
        helper [] [] acc               = reverse acc
        helper (a : as) [] acc         = helper as [] (a : acc)
        helper [] (b : bs) acc         = helper [] bs (b : acc)
        helper (a : as) (b : bs) acc   = helper as bs ((a + b) : acc)
