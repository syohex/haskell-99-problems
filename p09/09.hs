-- Problem 9
-- Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists.

import Data.List

pack :: (Eq a) => [a] -> [[a]]
pack xs = group xs

pack2 :: (Eq a) => [a] -> [[a]]
pack2 [] = [[]]
pack2 (x:xs) = pack2' x xs [x];

pack2' :: (Eq a) => a -> [a] -> [a] -> [[a]]
pack2' _ [] acc = [acc]
pack2' prev (x:xs) acc = if prev == x
                         then pack2' x xs $ prev:acc
                         else acc : (pack2' x xs [x])
