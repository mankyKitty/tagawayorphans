{-# LANGUAGE MultiParamTypeClasses #-}
{-# OPTIONS_GHC -fwarn-orphans #-}
module TagAwayOrphans where

import           Data.Tagged (Tagged (..))
import           OtherFile   (OtherTag, TC (..))

data MyTag

-- instance TC OtherTag () where
--   foo = const (Tagged "Orphan Instance")

instance TC MyTag () where
  foo = const (Tagged "Not orphan instance")
