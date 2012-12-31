myLast :: [a] -> a
myLast [] = error "this is an empty list idiot!"
myLast [x] = x
myLast (x:xs) = myLast xs 


myLast' :: [a] -> a
myLast' = foldl1 (\_ x ->  x)
