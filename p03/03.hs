-- Problem 3
-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt xs n = head $ drop (n - 1) xs

elementAt2 :: [a] -> Int -> a
elementAt2 xs n = xs !! (n - 1)
