-- 5 Problem 5
-- Reverse a list.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = reverse xs ++ [x]

myReverse2 :: [a] -> [a]
myReverse2 xs = foldl (\a b -> b:a) [] xs
