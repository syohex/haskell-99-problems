-- Problem 2
-- Find the last but one element of a list.

myButLast :: [a] -> a
myButLast xs = head $ tail $ reverse xs

myButLast2 :: [a] -> a
myButLast2 xs = head $ drop (len - 2) xs
    where len = length xs
