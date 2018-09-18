{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( someFunc
    ) where

import Data.Text
import Control.Monad.State.Lazy
import Control.Monad.Writer.Lazy
import Data.IntMap.Strict
import Control.Lens

data World = World (IntMap Entity) Turns

data Entity = Entity

type EntRef = Lens' (IntMap Entity) (Maybe Entity)

type Turns = Int

type Effect = StateT World (Writer Readout)

type Reaction a b = a -> Effect b

type Readout = [Text]

newtype EntId = EntId Int deriving (Eq)





someFunc :: IO ()
someFunc = putStrLn "someFunc"

