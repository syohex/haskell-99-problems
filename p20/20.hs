{-

  Problem 20
  Remove the K'th element from a list.

  Example in Haskell:
  *Main> removeAt 2 "abcd"
  ('b',"acd")
-}

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (head $ drop (n - 1) xs, take (n - 1) xs ++ drop n xs)

removeAt' :: Int -> [a] -> (a, [a])
removeAt' n xs = (xs !! (n - 1), take (n - 1) xs ++ drop n xs)
