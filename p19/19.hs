{-
  Problem 19

  Rotate a list N places to the left.
  Hint: Use the predefined functions length and (++).

  Examples:
  *Main> rotate ['a','b','c','d','e','f','g','h'] 3
  "defghabc"

  *Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
  "ghabcdef"
-}

rotate :: [a] -> Int -> [a]
rotate xs n
    | n >= 0 = drop n xs ++ take n xs
    | otherwise = drop m xs ++ take m xs
                  where m = length xs + n
