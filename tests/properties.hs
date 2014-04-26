{-# LANGUAGE TemplateHaskell     #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Test.Framework.TH
import Test.Framework
import Test.Framework.Providers.QuickCheck2
import QS
import Data.List (sort, minimum, maximum)

prop_doubleSortInt :: [Integer] -> Bool
prop_doubleSortInt xs = qs sorted == sorted
     where sorted = qs xs

prop_equivToBuiltinInt :: [Integer] -> Bool
prop_equivToBuiltinInt xs = qs xs == sort xs

prop_firstIsSmallestInt :: [Integer] -> Bool
prop_firstIsSmallestInt [] = True -- Empty list is trivially sorted
prop_firstIsSmallestInt xs = (head . qs $ xs) == minimum xs


prop_lastIsLargestInt :: [Integer] -> Bool
prop_lastIsLargestInt [] = True -- Empty list is trivially sorted
prop_lastIsLargestInt xs = (last . qs $ xs) == maximum xs

main :: IO ()
main = $defaultMainGenerator