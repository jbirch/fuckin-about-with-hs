{-# LANGUAGE TemplateHaskell #-}
module Main where

import Test.Framework.TH
import Test.Framework
import Test.Framework.Providers.QuickCheck2

main = $defaultMainGenerator