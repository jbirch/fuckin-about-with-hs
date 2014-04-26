module Main (main) where

import QS (qs)

main :: IO ()
main = print . (qs :: [Integer] -> [Integer]) $  [100, 99..0]
