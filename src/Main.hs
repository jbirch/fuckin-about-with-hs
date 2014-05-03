{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

--import           Data.Monoid (mconcat)
--import           QS         (qs)
import           Web.Scotty

main :: IO ()
main = scotty 3000 $ get "/" $ html "Derp"

-- mconcat . show . (qs :: [Integer] -> [Integer]) $  [100, 99..0]
