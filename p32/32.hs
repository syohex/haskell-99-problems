{-
  Problem 32
  Determine the greatest common divisor of two positive integer numbers.
  Use Euclid's algorithm.

  Example:
  > myGCD 36 63
  9
-}

myGCD :: Int -> Int -> Int
myGCD n 0 = n
myGCD n m = myGCD m (n `mod` m)
