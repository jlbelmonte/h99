myLast2 :: [a] -> a
myLast2 = foldl1 (\_ x ->  x)
