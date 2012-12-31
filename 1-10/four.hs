myLength :: [a] -> Int
myLength [] = 0;
myLength (_:xs) = 1 + (myLength xs)

myLength' :: [a] -> Int
myLength' [] = 0;
myLength' xs = 1 + (myLength $ tail xs)

myLength'' xs = foldl (\acc x -> acc+1) 0 xs
