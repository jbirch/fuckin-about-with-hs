{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main (main) where

import           Data.Monoid      (mconcat)
--Import           QS         (qs)
import           Data.Aeson.Types
import           Web.Scotty


main :: IO ()
main = scotty 3000 $ get "/" $ do
         (fooParam :: String) <- param "foo"
         json $ toJSON ["Derp ", fooParam]

-- mconcat . show . (qs :: [Integer] -> [Integer]) $  [100, 99..0]
