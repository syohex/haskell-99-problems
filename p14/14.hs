{-
   Problem 14
   Duplicate the elements of a list.

   Example in Haskell:
   > dupli [1, 2, 3]
   [1,1,2,2,3,3]
-}

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:(dupli xs)

dupli' :: [a] -> [a]
dupli' xs = foldr (\x acc -> x:x:acc) [] xs
