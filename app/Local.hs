{-# LANGUAGE StaticPointers #-}

module Local where

import Control.Distributed.Closure
import Data.Typeable

g :: a -> Int
g x = 2

cg :: Typeable a => Closure (a -> Int)
cg = closure (static g)
