{-# LANGUAGE RankNTypes #-}
module Classes where

import Types
import Data.Text

class Usable e where
  use :: EntRef -> e -> Effect ()

class Named e where
  name :: e -> Text

class Describable e where
  describe :: e -> Text

class Pocketable e where
  pocket :: EntRef -> e -> Effect ()

class Wearable e where
  wear :: EntRef -> e -> Effect ()

