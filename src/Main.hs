{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import           Data.Monoid (mconcat)
--Import           QS         (qs)
import           Web.Scotty

main :: IO ()
main = scotty 3000 $ get "/" $ do
         fooParam <- param "foo"
         html $ mconcat ["Derp", fooParam]

-- mconcat . show . (qs :: [Integer] -> [Integer]) $  [100, 99..0]
