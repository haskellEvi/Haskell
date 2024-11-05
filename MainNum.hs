module Main where

guarmsize :: (Ord a, Num a) => a -> String
guarmsize num 
    | num < 3 = "that's a small number"
    | num < 10 = "that's a medium number"
    | num < 100 = "that's a pretty big number"
    | num < 1000 = "that's a giant number"
    | otherwise = "that's an unfathomably big number"

guardSize :: (Ord a, Num a) => a -> String
guardSize num 
    | num > 0 =
        let size = "positive"
        in exclaim size
    | num < 3 = exclaim "small"
    | num < 100 = exclaim "medium"
    | otherwise = exclaim "large"
    where
        exclaim message = "that's a " <> message <> " number!"
        




main :: IO ()
main = print "Hey"

