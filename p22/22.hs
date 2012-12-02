{-
  Problem 22

  Create a list containing all integers within a given range.

  > range 4 9
  [4,5,6,7,8,9]
-}

range :: Int -> Int -> [Int]
range from to = [from..to]

range' :: Int -> Int -> [Int]
range' from to = take (to - from + 1) [from..]
