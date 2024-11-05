module Main where

makeGreeting :: String -> String -> String
makeGreeting salutation person =
  let messageWithTrailingSpace = salutation <> " "
  in messageWithTrailingSpace <> person


extendedGreeting :: [Char] -> String
extendedGreeting person =
  let hello = makeGreeting "Hello" person
      goodDay = makeGreeting "I hope you have a nice afternoon" person
      goodBye = makeGreeting "See you later" person
  in  hello <> "\n" <> goodDay <> "\n" <> goodBye
  
main :: IO ()
main = putStrLn $ makeGreeting "Hello" "Fred"

