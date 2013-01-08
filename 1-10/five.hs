
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) =  (reverse' xs) ++ [x]

reverse'' xs = foldl (\acc x -> x:acc) [] xs

