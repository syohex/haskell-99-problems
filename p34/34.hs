{-
  Problem 34
  Calculate Euler's totient function phi(m).

  Euler's so-called totient function phi(m) is defined as the number of
  positive integers r (1 <= r < m) that are coprime to m.

  Example: m = 10: r = 1,3,7,9; thus phi(m) = 4.
  Note the special case: phi(1) = 1.

  Example in Haskell:
  > totient 10
  4
-}

coprime :: Int -> Int -> Bool
coprime n m = (gcd n m) == 1

totient :: Int -> Int
totient n = length [x | x <- [1..n], coprime x n]
