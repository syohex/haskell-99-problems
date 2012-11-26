-- Problem 8
-- Eliminate consecutive duplicates of list elements.

import Data.List

compress :: (Eq a) => [a] -> [a]
compress xs = map head $ group xs

compress2 :: (Eq a) => [a] -> [a]
compress2 [] = []
compress2 (x:xs) = compress2' x xs

compress2' :: (Eq a) => a -> [a] -> [a]
compress2' prev [] = [prev]
compress2' prev (x:xs) = if prev == x
                         then compress2' x xs
                         else prev : compress2' x xs
