{-
  Problem 31
  Determine whether a given integer number is prime.

  Example in Haskell:
  P31> isPrime 7
  True
-}

isPrime :: Int -> Bool
isPrime n = (length [x | x <- [1..n], n `mod` x == 0]) == 2
