{-
  Problem 15

  Replicate the elements of a list a given number of times.

  > repli "abc" 3
  "aaabbbccc"
-}

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = replicate n x ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' xs n = concatMap (\x -> replicate n x) xs
