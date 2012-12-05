{-
  Problem 33
  Determine whether two positive integer numbers are coprime.
  Two numbers are coprime if their greatest common divisor equals 1.

  Example:
  > coprime 35 64
  True
-}

coprime :: Int -> Int -> Bool
coprime n m = (gcd n m) == 1
