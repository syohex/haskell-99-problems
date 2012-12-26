{-
 6 Problem 35

 Determine the prime factors of a given positive integer.
 Construct a flat list containing the prime factors in ascending order.

 Example in Haskell:
 > primeFactors 315
 [3, 3, 5, 7]
-}

primeFactors :: Int -> [Int]
primeFactors n = primeFactors' n 2 []

primeFactors' :: Int -> Int -> [Int] -> [Int]
primeFactors' n p ns
    | n < p = reverse ns
    | otherwise = if n `mod` p == 0
                  then primeFactors' (n `div` p) p (p:ns)
                  else primeFactors' n (p + 1) ns
