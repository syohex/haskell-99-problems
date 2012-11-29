{-
 Problem 17

 Split a list into two parts; the length of the first part is given.
 Do not use any predefined predicates.

 > split "abcdefghik" 3
 ("abc", "defghik")
-}

split' :: [a] -> Int -> ([a], [a])
split' xs n = f xs 1 []
    where
      f :: [a] -> Int -> [a] -> ([a], [a])
      f [] _ acc = (acc, [])
      f (y:ys) m acc = if m > n
                       then (acc, ys)
                       else f ys (m + 1) (acc ++ [y])

split'' :: [a] -> Int -> ([a], [a])
split'' xs n = (take n xs, drop n xs)
