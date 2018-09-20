{-# LANGUAGE RankNTypes #-}

module Types where

import Data.IntMap
import Data.Dynamic
import Data.Text
import Control.Lens
import Control.Monad.Writer
import Control.Monad.State.Lazy


data World = World (IntMap Entity) Turns

newtype Entity = Entity Dynamic

type EntRef = Lens' (IntMap Entity) (Maybe Entity)

type Turns = Int

type Effect = StateT World (Writer Readout)

type Reaction a b = a -> Effect b

type Readout = [Text]

newtype EntId = EntId Int deriving (Eq)
