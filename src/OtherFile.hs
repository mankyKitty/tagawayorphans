{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
module OtherFile
  ( OtherTag
  , TC (..)
  ) where

import Data.Tagged (Tagged (..))

data OtherTag

class TC t a where
  foo :: a -> Tagged t String

instance TC t a => TC t (Maybe a) where
  foo Nothing = Tagged "boo"
  foo (Just a) = foo a
