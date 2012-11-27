{-
 Problem 12
 Decode a run-length encoded list.

 Given a run-length code list generated as specified in problem 11.
 Construct its uncompressed version.

 > decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
   "aaaabccaadeeee"
-}

data Encoded a = Single a | Multiple Int a deriving (Show)

decodeModified :: [Encoded a] -> [a]
decodeModified [] = []
decodeModified ((Single x):xs)     = x : (decodeModified xs)
decodeModified ((Multiple n x):xs) = (repeat' n x) ++ (decodeModified xs)
                    where
                      repeat' :: Int -> a -> [a]
                      repeat' 0 _ = []
                      repeat' m xx = xx : (repeat' (m - 1) xx)

decodeModified' :: [Encoded a] -> [a]
decodeModified' xs = concatMap decodeHelper xs
                     where
                       decodeHelper :: (Encoded a) -> [a]
                       decodeHelper (Single x) = [x]
                       decodeHelper (Multiple n x) = replicate n x
