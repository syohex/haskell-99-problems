-- Problem 1
-- Find the last element of a list.

myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs

myLast2 :: [a] -> a
myLast2 xs = head $ reverse xs

myLast3 :: [a] -> a
myLast3 = head . reverse
