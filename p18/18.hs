{-
 Problem 18
 Extract a slice from a list.

  Given two indices, i and k, the slice is the list containing the elements between
  the i'th and k'th element of the original list (both limits included).
  Start counting the elements with 1.

  Example:
  > slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
  "cdefg"
-}

slice :: [a] -> Int -> Int -> [a]
slice xs n m = take (m - n + 1) $ drop (n - 1) xs

slice' :: [a] -> Int -> Int -> [a]
slice' xs n m = [fst elem' | elem' <- elems, snd elem' >= n, snd elem' <= m ]
    where
      len = length xs
      elems = take len $ zip xs [1..]
