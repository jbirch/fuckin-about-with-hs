{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main (main) where

import           Data.Aeson.Types (toJSON)
import           Data.List.Split  (splitOn)
import           QS               (qs)
import           Web.Scotty       (get, json, param, scotty)


main :: IO ()
main = scotty 3000 $ get "/" $ do
         (parameter :: String) <- param "items"
         json . toJSON . qs $ splitOn "," parameter
