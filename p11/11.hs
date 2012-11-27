{-
  Problem 11
  Modified run-length encoding.
  Modify the result of problem 10 in such a way that if an element has no
  duplicates it is simply copied into the result list.
  Only elements with duplicates are transferred as (N E) lists.

  > encodeModified "aaaabccaadeeee"
  [Multiple 4 'a',Single 'b',Multiple 2 'c',
   Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

import Data.List

data Encoded a = Single a | Multiple Int a deriving (Show)

encodeModified :: (Eq a) => [a] -> [(Encoded a)]
encodeModified [] = []
encodeModified xs = map f (group xs)
                    where
                      f :: [a] -> (Encoded a)
                      f x = if (length x) == 1
                            then Single (head x)
                            else Multiple (length x) (head x)
