-- Problem 4
-- Find the number of elements of a list

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

myLength2 :: [a] -> Int
myLength2 xs = sum [1 | _ <- xs]

myLength3 :: [a] -> Int
myLength3 xs = foldl (\a _ -> 1 + a) 0 xs
