module FizzBuzz where

fizzBuzzFor :: (Integral a, Show a) => a -> String
fizzBuzzFor number
    | 0 == number `rem` 15 = "FizzBuzz"
    | 0 == number `rem` 5 = "buzz"
    | 0 == number `rem` 3 = "fizz"
    | otherwise = show number

naiveFizzBuzz :: (Integral t, Show t) => t -> t -> String -> String
naiveFizzBuzz fizzBuzzCount curNum fizzBuzzString =
    if curNum > fizzBuzzCount
    then fizzBuzzString
    else
        let nextfizzBuzzString = fizzBuzzString <> fizzBuzzFor curNum <> " "
            nextNumber = curNum + 1
        in naiveFizzBuzz fizzBuzzCount nextNumber nextfizzBuzzString

         
