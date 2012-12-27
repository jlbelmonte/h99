myButLast :: [a] -> a
myButLast xs = xs !! (length xs -2)


myButLast' :: [a] -> a
myButLast' [] = error "empty list"
myButLast' [x] = error "only one element"
myButLast' (x:xs) = if length xs == 2 then head xs else myButLast' xs

myButLast'' :: [a] -> a
myButLast'' xs
	| len <= 1 = error "not enough elements"
 	| len == 2 = head xs
	| len > 2 =  myButLast'' $  tail xs 
	where len = length xs
