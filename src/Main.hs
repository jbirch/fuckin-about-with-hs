{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main (main) where

import           Data.Aeson.Types
import           QS               (qs)
import           Web.Scotty


main :: IO ()
main = scotty 3000 $ get "/" $ json . toJSON . (qs :: [Integer] -> [Integer]) $  [100, 99..0]
