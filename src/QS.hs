{-# LANGUAGE ViewPatterns #-}
module QS where

import Prelude hiding (filter)
import Data.Foldable (toList)
import Data.Sequence

qs :: Ord a => [a] -> [a]
qs xs = toList . qsSeq . fromList $ xs


qsSeq :: Ord a => Seq a -> Seq a
qsSeq (viewl -> x :< xs) = qsSeq less >< x <| qsSeq more
    where
        less = filter (<  x) xs
        more = filter (>= x) xs
qsSeq _                  = empty