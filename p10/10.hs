import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = encode' x xs 1

encode' :: (Eq a) => a -> [a] -> Int -> [(Int, a)]
encode' prev [] n = [(n, prev)]
encode' prev (x:xs) n = if prev == x
                        then encode' x xs (n + 1)
                        else (n, prev) : encode' x xs 1

encode2 :: (Eq a) => [a] -> [(Int, a)]
encode2 xs = map (\x -> (length x, head x)) (group xs)
