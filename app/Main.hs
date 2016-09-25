{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE StaticPointers #-}

import Local
import Data.Binary
import Control.Distributed.Closure

main :: IO ()
main = do
  let x = encode (cg :: Closure (Bool -> Int))
  let !y = decode x :: Closure (Bool -> Int)
  print $ unclosure y True
