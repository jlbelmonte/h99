elementAt :: [a] -> Int ->a
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i-1)
elementAt _ _ = error "outbound or empty list" 



elementAt' :: [a] -> Int -> a
elementAt' [] _ = error "empty list"
elementAt' (x:_) 1 = x
elementAt' xs i 
	| i < 1 = error "index should be an integer greater than 0"
	| (i-1) > length xs = error "Index out of bound"
        | otherwise =  xs !! (i-1)


elementAt'' :: [a] -> Int -> a
elementAt'' [] _ = error "empty list"
elementAt'' (x:_) 1 = x
elementAt'' (x:xs) i 
	| i < 1 = error "index out of bound"
	| (i-1) > length xs = error "index out of bound"
	| otherwise = elementAt'' xs (i-1)


